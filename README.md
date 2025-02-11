# Google Analytics E-commerce Analysis with DBT and BigQuery

## 📌 Overview  
This project demonstrates how to use **DBT** (Data Build Tool) in conjunction with **BigQuery** to collect, transform, and analyze data from a public Google Analytics e-commerce dataset. The goal is to showcase data transformation and analysis skills while applying best practices such as adding tests and documentation to ensure data integrity and maintainability.

The project covers the entire workflow, from extracting raw data to transforming it into actionable insights, ensuring high data quality with testing, and documenting the steps for reproducibility and clarity.

## 📂 Contents  
- **dbt_project.yml** – The main DBT project configuration file  
- **models/** – Contains DBT models for data transformation and analysis  
    - **staging/** – Raw data transformation  
    - **intermediate/** – Further cleaning and enriching the data  
    - **final/** – Final, analyzed tables ready for reporting  
- **tests/** – DBT tests to ensure data quality and consistency  
- **macros/** – Custom DBT macros (if applicable)  
- **documentation/** – Documentation of the project and data pipeline steps  

To run this project, follow these steps:

1. Clone the repository and install dependencies.
2. Set up **BigQuery** credentials and connection.
3. Set up your DBT environment with `dbt-core` and `dbt-bigquery`:
   ```bash
   pip install dbt-core dbt-bigquery
   ```
4. Run DBT models and tests:
   ```bash
   dbt run
   dbt test
   ```

## 📚 Libraries  
This project uses the following Python libraries:

- **dbt-core** – A framework for transforming data in your warehouse  
- **dbt-bigquery** – DBT adapter for BigQuery  
- **pandas** (optional) – Data manipulation (if used in custom scripts)  
- **numpy** (optional) – Numerical computing (if used in custom scripts)  
