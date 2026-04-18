## NOTE! Power BI file is too large so, i uploaded it into google drive where you can install it: https://drive.google.com/drive/folders/1TIQSarLuqr5CX-XFWbNPXWQJZSnD_tBp?usp=drive_link

# 🧠 Data Analysis Project: E‑Commerce Dashboard

## 📋 Project Overview

This project demonstrates an end‑to‑end data analysis workflow using **Python** (Pandas, NumPy, Matplotlib, Seaborn) for exploratory analysis and cleaning, **SQL** (PostgreSQL / MySQL) for deeper aggregations, and **Power BI** for an interactive dashboard.

The dataset consists of five related tables: `customers_clean`, `orders_clean`, `items_clean`, `payments_clean`, and `products_clean`. The goal is to uncover insights about order trends, customer segments, product performance, payment preferences, and delivery efficiency.

## 🗂️ Project Structure
📁 data-analysis-project/
│
├── data/ # Raw and cleaned datasets (CSV)
├── notebooks/ # Jupyter notebooks for EDA & cleaning
├── sql_queries/ # SQL scripts for aggregations
├── dashboard/ # Power BI file (.pbix)
├── scripts/ # Python scripts for preprocessing
└── README.md # This file

## 🧰 Tools & Technologies

| Tool / Library          | Purpose                                             |
|-------------------------|-----------------------------------------------------|
| Python (Pandas, NumPy)  | Data loading, cleaning, EDA                        |
| SQL (PostgreSQL/MySQL)  | Querying, joining, aggregations                    |
| Power BI Desktop        | Interactive dashboard and reporting                |
| Jupyter Notebook / VS Code | Development environment                         |
| Git & GitHub            | Version control                                    |

## 🔍 Steps Performed

### 1. Loading the Dataset
- Loaded five CSV files (`customers_clean`, `orders_clean`, `items_clean`, `payments_clean`, `products_clean`) using Pandas.
- Inspected data types, missing values, and basic statistics with `.info()` and `.describe()`.

### 2. Exploratory Data Analysis (EDA)
- Identified missing values, duplicates, and outliers.
- Created distribution plots, box plots, and correlation matrices.
- Explored relationships between order status, payment type, price, and delivery time.

### 3. Data Cleaning & Transformation
- Removed duplicate rows (e.g., duplicate order items).
- Converted columns to correct data types (dates, numbers).
- Extracted year, month, day from `shipping_limit_date`.
- Exported cleaned data as CSV for SQL and Power BI.

### 4. SQL Queries
- Loaded cleaned data into PostgreSQL / MySQL.
- Ran queries to:
  - Calculate monthly order counts and revenue.
  - Find top product categories by sales.
  - Analyze payment method distribution.
  - Segment customers by region and order frequency.
- Saved SQL scripts in `/sql_queries/`.

### 5. Power BI Dashboard
- Connected Power BI to the SQL database (or directly to cleaned CSV files).
- Built a dynamic dashboard with:
  - KPI cards (total orders, unique customers, average order value).
  - Line chart: orders per month with year‑over‑year comparison.
  - Bar chart: top 10 product categories.
  - Pie chart: payment type distribution.
  - Scatter plot: payment value vs. number of installments.
  - Map: orders by customer state.
- Added slicers for year, region, and payment type.

## 📈 Key Insights (examples)
Total orders: 96,296

Unique customers: 96,768

Most popular payment type: voucher (73.92%)

Top product category: [your category]

Peak order month: [month, year]

## 🚀 Future Enhancements
Automate the ETL pipeline with Apache Airflow.

Add real‑time data updates via API.

Publish dashboard to Power BI Service or migrate to Streamlit.

## 👤 Author
Diar Alimzhan
Data Analyst | Python | SQL | Power BI
📧 diar.05@bk.ru
🔗 https://www.linkedin.com/in/diar-alimzhan-b03270404/

## Thank you for attention!
