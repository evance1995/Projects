-- ====================================
-- Project: Unicorn Industry Analysis
-- ====================================

-- Period: 2019 to 2021
-- SQL dialect: PostgreSQL
--
-- Business question:
-- Which industries produced the most new unicorns
-- between 2019 and 2021?
--
-- Tables used:
-- dates: when each company became a unicorn
-- industries: each company's industry
-- funding: company valuations and funding information
--
-- Approach:
-- 1. Inspect the source tables.
-- 2. Identify the three leading industries.
-- 3. Count new unicorns by industry and year.
-- 4. Compare average valuations by industry and year.
   
   

-- ====================================
-- SECTION 1: DATA EXPLORATION
-- ====================================

-- 1. Preview the date table.
SELECT *
FROM dates
LIMIT 10;

-- 2. Preview the industries table.
SELECT *
FROM industries
LIMIT 10;

-- 3. Preview the funding table.
SELECT *
FROM funding
LIMIT 10;

-- 4. Preview the companies table
SELECT *
FROM companies
LIMIT 5;


-- ====================================
-- SECTION 2: DATA QUALITY CHECKS
-- ====================================

-- Check 1: Find duplicate company IDs
-- in the funding table.
SELECT 
	company_id, 
	COUNT(*)
FROM funding
GROUP BY company_id
HAVING COUNT(*) > 1;

-- Check 2: Find missing valuation values
SELECT 
	company_id,
	valuation
FROM funding
WHERE valuation IS NULL;

-- Check 3: Find industry records
-- where the industry value is NULL, 
-- empty, or contain only spaces.
--
-- This checks only the industries table.
-- It does not identify companies that have no matching
-- record in the industries table.
SELECT 
	company_id,
	industry
FROM industries
WHERE NULLIF(TRIM(industry), '') IS NULL;

-- Check 4: Find companies with no industry record
-- or with a missing or blank industry value.
--
-- A LEFT JOIN keeps all companies, including those that
-- do not have a matching record in the industries table.
--
-- The query identifies two issues:
-- 1. The company has no matching industry record.
-- 2. The company has a matching record, but 
-- the industry value is NULL.
SELECT
	c.company_id,
	c.company
FROM companies AS c
LEFT JOIN industries AS i
	ON c.company_id = i.company_id
WHERE i.company_id IS NULL
  OR NULLIF(TRIM(i.industry), '') IS NULL;

-- Check 5: Find missing date values
SELECT
	company_id,
	date_joined
FROM dates
WHERE date_joined IS NULL;

-- Check 6: Find companies with missing date values
SELECT
	c.company_id,
	c.company
FROM companies AS c
LEFT JOIN dates AS d
	ON c.company_id = d.company_id
WHERE d.company_id IS NULL
	OR d.date_joined IS NULL;


-- ====================================
-- SECTION 3: MAIN ANALYSIS
-- ====================================
	
-- Step 1: Identifying the three industries with  
-- the most new unicorns from 2019 through 2021.
WITH top_3 AS (
	SELECT 
		i.industry,
		COUNT(DISTINCT i.company_id) AS total_unicorns
	FROM industries AS i
	INNER JOIN dates AS d
		ON i.company_id = d.company_id
	WHERE d.date_joined >= '2019-01-01'
	  AND d.date_joined < '2022-01-01'
	GROUP BY 
		i.industry
	ORDER BY 
		total_unicorns DESC, 
		i.industry ASC
	LIMIT 3
	),

-- Step 2: Retrieve the companies in those industries
-- and the year each company became a unicorn.
unicorn_year AS (
	SELECT
		i.industry,
		i.company_id,
		DATE_PART('year', d.date_joined) AS year
	FROM industries AS i
	INNER JOIN top_3 AS t
		ON i.industry = t.industry
	INNER JOIN dates AS d
		ON d.company_id = i.company_id
	WHERE d.date_joined >= '2019-01-01'
	  AND d.date_joined < '2022-01-01'
	),

-- Step 3: Retrieve the valuation for each company
valuations AS (
	SELECT 
		u.*, 
		f.valuation/1000000000.0 AS valuation_billions
	FROM unicorn_year AS u
	LEFT JOIN funding AS f
	ON u.company_id = f.company_id
	)

-- Step 4: Calculating the number of unicorns and
-- average valuation for each industry and year.
SELECT 
	industry, 
	year, 
	COUNT(DISTINCT company_id) AS num_unicorns,
	ROUND(AVG(valuation_billions), 2) AS average_valuation_billions
FROM valuations
GROUP BY 
	industry, 
	year
ORDER BY 
	year DESC, 
	num_unicorns DESC,
	industry ASC;