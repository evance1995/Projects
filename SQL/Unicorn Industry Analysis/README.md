# Unicorn Industry Analysis (2019–2021)

## Project Overview

A unicorn is a privately held company valued at $1 billion or more. This project looks at companies that became unicorns from 2019 to 2021 to find which industries had the most new unicorns and compare their average valuations over the same period.

**Business question:** Which industries produced the most new unicorns between 2019 and 2021, and how did their yearly unicorn counts and average valuations compare?

## Tools Used

- **PostgreSQL / SQL** — to explore the tables, check data quality, and calculate the results.
- **Python** — to create visualizations using pandas, Matplotlib, and Seaborn.

## Data

The `datasets/` folder contains the CSV files used for this analysis. The tables used are:

- `dates` — identifies when a company became a unicorn.
- `industries` — identifies each company's industry.
- `funding` — contains company valuation and funding information.
- `companies` — contains company identifiers and names; it is used for data quality checks.

## Approach

- Preview the tables and review their columns.
- Check for duplicate company IDs, missing valuations, missing or blank industry values, and missing company, industry, or date records.
- Identify the three industries with the most new unicorns from 2019 to 2021.
- Count new unicorns by industry and year and calculate their average valuations in billions of US dollars.
- Use Python to create charts showing the yearly counts and average valuations.

## Visualizations

The charts below compare the number of new unicorns with average company valuations for the three industries in 2019, 2020, and 2021.

![New unicorn counts and average valuations by industry, 2019–2021](unicorn_analysis_charts.png)

## Key Findings

- **Fintech had the most new unicorns in 2021**, with 138 companies. Internet software & services followed with 119, and E-commerce & direct-to-consumer had 47.
- **All three industries saw a large increase in new unicorns in 2021 compared with 2020.**
- **Average valuations were lower in 2021 than in 2019** across all three industries. Fintech decreased from $6.80 billion to $2.75 billion, Internet software & services from $4.23 billion to $2.15 billion, and E-commerce & direct-to-consumer from $2.58 billion to $2.47 billion.
- **More new unicorns did not necessarily mean higher average valuations.** Fintech had the most new unicorns in 2021, but E-commerce & direct-to-consumer had a higher average valuation that year.

## Data Quality Checks

I performed six checks for duplicate company IDs, missing valuations, missing industry information, and missing dates. All six checks returned no results, so no issues were found in these specific checks. This does not guarantee that the datasets are free from every possible data quality issue.

## Limitations

- **Time period**: The analysis covers 2019 to 2021, so it does not show what happened in later years.
- **Valuations**: A high company valuation does not necessarily mean a company is profitable.
- **Average valuations**: Very highly valued companies can affect the average, so it may not represent every company in an industry.
- **Data accuracy**: The results depend on the accuracy of the information in the datasets.

## Project Files

- [`unicorn_analysis.sql`](unicorn_analysis.sql) — SQL table previews, data quality checks, and main analysis query.
- [`unicorn_analysis.ipynb`](unicorn_analysis.ipynb) — project walkthrough, main analysis query result, charts, key findings, limitations, and conclusion.
- [`datasets/`](datasets/) — source CSV files used in the analysis
- [`unicorn_final_result.csv`](unicorn_final_result.csv) — main analysis query result used to create the charts.
- [`unicorn_analysis_charts.png`](unicorn_analysis_charts.png) — chart image shown in this README.
