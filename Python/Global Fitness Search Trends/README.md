# Global Fitness Search Trends: Market Analysis

## Project Overview

This project explores Google Trends data related to fitness and workout keywords from March 2018 to March 2023. The goal is to understand how search interest changed over time, compare fitness keywords across different periods, and explore differences between selected countries.

The analysis uses Python, Pandas, Matplotlib and Seaborn to examine the data and create visualizations.

## Business Questions

1. In which year did global interest in the search term "workout" reach its highest point?
2. How did search interest in the fitness keywords change over time?
3. How did average search interest for each keyword vary across the three periods?
4. Which of Japan, the United States, and Australia had the highest relative search interest in "workout"?
5. Which of the Philippines and Malaysia had higher relative search interest in "home workout"?

## Datasets

The project uses four CSV files included in the `datasets` folder.

| Dataset                  | Description                                                                                          |
| ------------------------ | ---------------------------------------------------------------------------------------------------- |
| `workout.csv`            | Monthly worldwide search interest for "workout".                                                     |
| `three_keywords.csv`     | Monthly worldwide search interest for "home workout", "gym workout" and "home gym".                  |
| `workout_geo.csv`        | Search interest for "workout" across different countries over the 2018–2023 period.                  |
| `three_keywords_geo.csv` | Search interest for the three fitness keywords across different countries over the 2018–2023 period. |

The geographic datasets contain missing values for some countries. These values were left unchanged, and the analysis focuses on the selected countries with available data.

## Tools and Libraries

* **Python** — programming language used for the analysis.
* **Pandas** — loading, checking, filtering and transforming data.
* **Matplotlib** — creating charts and customizing their appearance.
* **Seaborn** — creating visualizations, including line charts.

## Methodology

The analysis follows these steps:

1. Load the four datasets into Pandas DataFrames.
2. Check for missing values and duplicate rows.
3. Convert the relevant date columns to datetime format.
4. Identify the year in which worldwide search interest for "workout" reached its peak.
5. Visualize how search interest in the three fitness keywords changed over time.
6. Compare average search interest across three analytical periods:

   * **Pre-pandemic:** March 2018 to February 2020
   * **Pandemic period:** March 2020 to December 2021
   * **Post-2021:** January 2022 to March 2023
7. Compare workout search interest across Japan, the United States and Australia.
8. Compare the three fitness keywords between the Philippines and Malaysia.
9. Summarize the findings and limitations.

The three periods were selected to compare search interest over time. They do not represent official start or end dates of the COVID-19 pandemic.

## Key Findings

* Worldwide search interest for "workout" reached its peak in **April 2020**, with a Google Trends index of 100.
* "Home Workout" experienced a sharp increase in April 2020, reaching an index of 82, while "Gym Workout" had an index of 13.
* "Home Workout" had the highest average search interest during the pandemic-period grouping.
* "Gym Workout" had the highest average search interest before the pandemic period and again during the post-2021 period.
* Among Japan, the United States and Australia, the United States had the highest "workout" index score, followed by Australia and Japan.
* The Philippines had slightly higher search interest in "home workout" than Malaysia, with scores of 52 and 47, respectively.

These findings describe Google Trends search interest rather than actual fitness activity or consumer spending.

## Limitations

* Google Trends measures relative search interest, not the exact number of searches or people searching.
* Search interest does not necessarily reflect purchases, gym memberships or how often people exercise.
* The data ends in March 2023 and does not show current fitness search trends.
* The periods used in the analysis are chosen for comparison and do not represent official COVID-19 start or end dates.
* Missing geographic values limit the countries that can be compared.
* The country comparisons focus on selected countries and do not cover every country in the dataset.

## How to Run the Project

### 1. Install the required libraries

Make sure Python is installed, then run:

```bash
pip install pandas matplotlib seaborn jupyter
```

### 2. Open the project folder

Make sure you are working from the `Global Fitness Search Trends` folder, which contains `notebook.ipynb` and the `datasets` folder.

### 3. Launch Jupyter Notebook

Run:

```bash
jupyter notebook
```

Open `notebook.ipynb` in your browser.

### 4. Run the analysis

Run the notebook cells from top to bottom to reproduce the data checks, analysis and visualizations.

## Project Structure

```text
Global Fitness Search Trends/
│
├── notebook.ipynb
├── README.md
│
└── datasets/
    ├── workout.csv
    ├── workout_geo.csv
    ├── three_keywords.csv
    └── three_keywords_geo.csv
```
