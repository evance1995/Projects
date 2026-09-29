
# Nobel Prize Laureates: Data Analysis and Visualization

## Overview

This project explores Nobel Prize laureates from **1901 to 2023** using **R and the tidyverse**.

The analysis examines patterns in Nobel Prize representation across **sex, birth country, Nobel Prize category, and time**.

## Project Objectives

The analysis explores three main areas:

* How representation has changed over time.
* How Nobel laureates are geographically distributed.
* How representation differs across Nobel Prize categories.

## Key Findings

* **Sex representation:** Among laureates with recorded sex, there were **905 male laureates and 65 female laureates**. Female representation increased notably from the 2000s to the 2010s.
* **Category differences:** Female representation varies across Nobel Prize categories, with higher representation in some categories than others.
* **Geographic concentration:** The **United States** was the birth country of **291 Nobel laureates**, the highest total among the countries analyzed.
* **US representation:** The proportion of US-born laureates varied considerably across decades and reached **44% in the 2000s**.
* **Repeat recipients:** The dataset includes individuals and organizations that received multiple Nobel Prizes.

## Visualizations

### Female Representation Over Time

The proportion of female Nobel laureates remained relatively low during much of the early history of the Nobel Prize but increased in more recent decades.

<img width="840" height="840" alt="image" src="https://github.com/user-attachments/assets/8ef3b466-f6e3-4f32-9431-f66e77b40914" />


### Top 10 Birth Countries

The United States had the largest number of Nobel laureates by birth country, followed by other countries with substantial representation.

![Top 10 Birth Countries](images/top_10_birth_countries.png)

### Female Representation by Nobel Prize Category

Female representation varies considerably across Nobel Prize categories.

![Female Representation by Category](images/female_representation_by_category.png)

## Questions Analyzed

1. Which sex has the most Nobel laureates?
2. Which birth countries have the most Nobel laureates?
3. Which decade had the highest proportion of US-born laureates?
4. Which decade-category combinations had the highest proportion of female laureates?
5. Who was the first woman to receive a Nobel Prize?
6. Which individuals or organizations received multiple Nobel Prizes?
7. How has the proportion of female Nobel laureates changed over time?
8. Which Nobel Prize categories have the highest and lowest proportions of female laureates?
9. How has the distribution of Nobel laureates across categories changed over time?

## Data Quality Checks

Before conducting the analysis, the dataset was checked for:

* Missing values in key variables.
* Duplicate records.
* The range of Nobel Prize years.

Missing values were retained when they did not prevent the relevant analysis. Where necessary, missing values were excluded from calculations involving the affected variable.

## Methodology

The analysis was conducted using R and the tidyverse.

The main steps included:

1. Inspecting the structure and contents of the dataset.
2. Checking for missing values, duplicates, and the range of years.
3. Creating derived variables such as `decade`.
4. Grouping and summarizing laureates by sex, country, decade, and category.
5. Calculating counts and proportions.
6. Identifying notable patterns and trends.
7. Creating visualizations using `ggplot2`.
8. Interpreting the results and documenting limitations.

## Tools & Skills

**Languages & Libraries**

* R
* tidyverse
* dplyr
* ggplot2
* readr
* forcats

**Skills Demonstrated**

* Exploratory Data Analysis (EDA)
* Data cleaning
* Data transformation
* Grouping and aggregation
* Proportion calculations
* Data visualization
* Historical trend analysis
* Data interpretation

## Limitations

This analysis describes patterns within the Nobel Prize laureate dataset and does not measure the overall ability or achievement of countries or demographic groups.

Some records contain missing information, particularly for variables such as sex and birth country.

Birth country also does not necessarily represent the country where a laureate conducted the work associated with the Nobel Prize.

The 2020s represent only **2020–2023** in this dataset, so this period should not be directly compared with complete decades.

Changes in Nobel Prize representation over time may also be affected by historical circumstances, the population of eligible candidates, and Nobel Prize selection practices. The analysis identifies patterns but does not attempt to establish causal explanations for them.

## Project Files

* `nobel_laureates_analysis.ipynb` — Complete analysis, visualizations, and findings.
* `data/nobel.csv` — Nobel Prize laureate dataset.
* `images/` — Visualizations featured in this README.

## Conclusion

This project demonstrates the use of R to **inspect, clean, transform, analyze, visualize, and interpret historical data**. It combines exploratory analysis with data visualization to examine Nobel Prize representation across time, geography, sex, and category.
