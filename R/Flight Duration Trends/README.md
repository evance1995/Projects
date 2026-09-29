# Nobel Prize Laureates: Data Analysis and Visualization

## Overview

This project looks at Nobel Prize winners from **1901 to 2023** using **R and the tidyverse**.

The analysis looks at Nobel laureates by **sex, birth country, Nobel Prize category, and year**. The goal is to find some interesting patterns and changes over time.

## Project Objectives

This project looks at:

* How Nobel Prize representation has changed over time.
* Which countries have the most Nobel laureates.
* How representation differs between Nobel Prize categories.

## Key Findings

* **Sex:** Among laureates with recorded sex, there were **905 male laureates and 65 female laureates**. Female representation increased in more recent decades.
* **Nobel categories:** The number of female laureates was different across Nobel Prize categories.
* **Birth country:** The **United States** had the highest number of Nobel laureates by birth country, with **291 laureates**.
* **US-born laureates:** The percentage of US-born laureates changed across different decades and reached **44% in the 2000s**.
* **Repeat winners:** Some individuals and organizations received more than one Nobel Prize.

## Visualizations

### Female Representation Over Time

This chart shows how the percentage of female Nobel laureates changed over time.

<img width="400" alt="image" src="https://github.com/user-attachments/assets/397b7d1d-2a67-4099-8fb2-b999195e1b23" />


### Top 10 Birth Countries

This chart shows the 10 birth countries with the highest number of Nobel laureates.

![Top 10 Birth Countries](images/top_10_birth_countries.png)

### Female Representation by Nobel Prize Category

This chart compares the percentage of female laureates across Nobel Prize categories.

![Female Representation by Category](images/female_representation_by_category.png)

## Questions Analyzed

1. Which sex has the most Nobel laureates?
2. Which birth countries have the most Nobel laureates?
3. Which decade had the highest proportion of US-born laureates?
4. Which decade and category had the highest proportion of female laureates?
5. Who was the first woman to receive a Nobel Prize?
6. Which people or organizations received multiple Nobel Prizes?
7. How has female representation changed over time?
8. Which Nobel Prize categories have the highest and lowest female representation?
9. How has the number of laureates in each category changed over time?

## Data Quality Checks

Before starting the analysis, I checked the data for:

* Missing values.
* Duplicate records.
* The range of Nobel Prize years.

Missing values were kept when they did not affect the analysis. When a missing value affected a calculation, those records were left out of that calculation.

## Methodology

The analysis was done using R and the tidyverse.

The main steps were:

1. Looking at the structure of the data.
2. Checking for missing values and duplicate records.
3. Creating a `decade` variable.
4. Grouping and counting laureates by different variables.
5. Calculating percentages.
6. Looking for patterns in the data.
7. Creating charts with `ggplot2`.
8. Writing down the main findings.

## Tools & Skills

**Tools**

* R
* tidyverse
* dplyr
* ggplot2
* readr
* forcats

**Skills**

* Data cleaning
* Data analysis
* Data transformation
* Grouping and counting data
* Calculating percentages
* Data visualization

## Limitations

 - These trends don't measure which countries or groups are the smartest or most capable.
 - Some records are missing information about a winner's gender or birthplace.
 - Where someone was born isn't always where they did their research.
 - Changes in Nobel Prize representation over time may be affected by changes in the population of eligible candidates and how Nobel Prizes were awarded.
 - This report shows what the trends are, but it doesn't try to explain why they happen.

## Project Files

* `nobel_laureates_analysis.ipynb` — Full analysis and charts.
* `data/nobel.csv` — Nobel Prize dataset.

## Conclusion

This project shows how I used R to **look at, clean, analyze, and visualize data**. I used the Nobel Prize dataset to explore changes in Nobel Prize winners across time, country, sex, and category.
