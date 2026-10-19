# Bank Credit Risk Analysis using Python and SQL

## About the Project
This is a data analysis project where I used Python and MySQL to study credit risk.

## Dataset

I used the UCI German Credit dataset, which contains 1,000 historical credit cases.
[UCI German Credit Dataset](https://archive.ics.uci.edu/dataset/144/statlog+german+credit+data)

## Tools Used

- Python (Pandas): To load, check, and prepare the data.

- MySQL: To analyze the data using SQL queries. 


## What I Did

- Downloaded the original dataset from UCI.

- Used Pandas to read the data and check for missing values.

- Created loan duration and loan amount categories.

- Saved the prepared data as a CSV file.

- Imported the CSV into MySQL.

- Wrote three SQL queries to analyze the data. 

## Key Findings

- 30% of the cases were classified as bad credit risk.

- Loans longer than 24 months had a 44.35% bad-risk rate.

- Loans above 5,000 DM had a 41.49% bad-risk rate.

- These are patterns in historical data, not proof that longer or larger loans cause bad credit risk.

- For detailed results, see [insights.md](insights.md). 

## How to Run

- Download `german.data` from the UCI dataset page and place it in `data/raw/` .

- Install Pandas using `py -m pip install pandas` .

- From the project folder, run `py python/01_prepare_data.py` .

- Create the MySQL table using `sql/01_create_table.sql` .

- Import `data/processed/credit_clean.csv` into the `credit_cases_simple` table using MySQL Workbench.

- Run the queries in `sql/02_analysis.sql` . 

## Conclusion

- This project helped me practice preparing real data with Python and using SQL to find useful patterns.