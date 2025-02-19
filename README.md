# Google Analytics E-commerce Analysis with DBT and BigQuery

## 📌 Overview  
This project demonstrates how to use **DBT** (Data Build Tool) in conjunction with **BigQuery** to collect, transform, and analyze data from a public [Google Analytics e-commerce dataset](https://support.google.com/analytics/answer/3437719?hl=en). The dataset provides 12 months (August 2016 to August 2017) of obfuscated Google Analytics 360 data from the Google Merchandise Store, a real ecommerce store that sells Google-branded merchandise.

The data is typical of what an ecommerce website would see and includes the following information:

- Traffic source data: information about where website visitors originate, including data about organic traffic, paid search traffic, and display traffic
- Content data: information about the behavior of users on the site, such as URLs of pages that visitors look at, how they interact with content, etc.
- Transactional data: information about the transactions on the Google Merchandise Store website.

The goal is to showcase data transformation and analysis skills while applying best practices such as adding tests and documentation to ensure data integrity and maintainability.

## 📂 Contents  
- **dbt_project.yml** – The main DBT project configuration file  
- **models/** – Contains DBT models for data transformation and analysis  
    - **bronze/** – Raw data transformation from source systems, focused on basic cleaning and initial ingestion  
    - **silver/** – Further cleaning, enrichment, and data quality improvements to create a more usable dataset  
    - **gold/** – Final, transformed, and highly-aggregated tables ready for analysis and reporting  
- **tests/** – DBT tests to ensure data quality and consistency

## 🛠️ Installation and Setup  

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

