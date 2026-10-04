# Subscription Behavior Analysis
## Overview

This project uses Python to look at customer subscriptions for a SaaS company.

The analysis looks at:

- Customer industries and company sizes
- Subscription renewals
- Payment amounts and payment methods
- Economic conditions during subscription periods

The goal is to find patterns in customer subscription behavior.

## Project Objectives

This project looks at:

* How customer industries and company sizes relate to renewals
* How renewal rates differ between subscription types
* How customers pay and how much they pay
* How economic conditions compare with subscription renewals

## Questions
1. How many Fintech and Crypto clients are there?
2. Which industry has the highest renewal rate?
3. Do renewal rates differ by subscription type and company size?
4. What payment methods do customers use?
5. How much do customers pay?
6. What is the average inflation rate during renewal periods?
7. How do economic conditions differ between customers who renewed and those who did not?

## Datasets

Four datasets were used in this project.

`client_details.csv`

Contains information about each client:

* Client ID
* Company size
* Industry
* Location

`subscription_records.csv`

Contains information about customer subscriptions:

* Client ID
* Subscription type
* Start date
* End date
* Whether the subscription was renewed

`payment_history.csv`

Contains payment information:

* Client ID
* Payment date
* Amount paid
* Payment method

`economic_indicators.csv`

Contains economic information:

* Start date
* End date
* Inflation rate
* GDP growth rate

## Key Findings

* The analysis found differences in renewal rates across industries, subscription types, and company sizes.
* Payment amounts and payment methods also varied between customers.
* The economic analysis was used to provide additional context around subscription renewal periods.
* The exact results and calculations can be found in the notebook.

## Visualizations

The project includes charts showing:

### Number of clients by industry

This chart shows the number of clients in each industry

<img width="400" alt="image" src="https://github.com/user-attachments/assets/70a64f11-8882-41af-9fb7-f6d6a46f53f0" />


### Renewal rates by industry

This chart shows the percentage of subscriptions that were renewed in each industry.

<img width="400" alt="image" src="https://github.com/user-attachments/assets/2e1e2964-37ad-42f3-8b2b-4e818c87c3f5" />


### Renewal rates by subscription type

This chart compares the renewal rates between monthly and yearly subscriptions.

<img width="400" alt="image" src="https://github.com/user-attachments/assets/283259d8-990a-43eb-906e-9d246a4f1a77" />


### Renewal rates by company size

This chart compares the renewal rates across small, medium and large companies.

<img width="400" alt="image" src="https://github.com/user-attachments/assets/ed7115d1-76d7-4dc2-9dbf-ab860b1b0da7" />


### Payment methods used by customers

This chart shows how many payments were made using each payment method.

<img width="400" alt="image" src="https://github.com/user-attachments/assets/16086560-2cdd-4105-8481-8df48847b5e3" />

### Average payment amount by payment method

This chart compares the average payment amount for each payment method.

<img width="400" alt="image" src="https://github.com/user-attachments/assets/88a1bbe8-51e8-46a7-ba1d-d54b23ef3f3c" />


## Data Quality Checks

Before the analysis, the datasets were checked for:

* Missing values
* Duplicate records
* Data types
* Date ranges
* Matching client IDs between datasets

These checks were used to make sure the data was ready for analysis.

## Methodology

The main steps were:

1. Load the datasets.
2. Check the data.
3. Convert date columns to the correct format.
4. Combine related datasets using client_id.
5. Calculate renewal rates.
6. Analyze payment information.
7. Compare subscription data with economic data.
8. Create charts.
9. Review the main findings.

## Tools & Skills

**Tools**
* Python
* Pandas
* Matplotlib
* Seaborn

**Skills**
* Data cleaning
* Data checking
* Data analysis
* Data merging
* Working with dates
* Grouping and calculating data
* Data visualization

## Limitations

- Economic data covers broader periods, while subscription dates are specific days.
- Economic data is not available for every subscription period.
- Payment dates should not automatically be treated as renewal dates.
- The analysis shows patterns in the data but does not prove that one factor caused another.

## Project Files
* notebook.ipynb — Main analysis
* [datasets/subscription analysis](Python/Subscription Analysis/datasets) — CSV files used in the project

## Conclusion

This project used four datasets to look at customer information, subscription renewals, payment behavior, and economic conditions.

The analysis helped identify patterns in customer subscription behavior and showed how different types of data can be combined to answer business questions.
