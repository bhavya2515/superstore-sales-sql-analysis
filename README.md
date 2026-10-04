# Superstore Sales SQL Analysis

## 📌 Project Overview

This project focuses on analyzing Superstore sales data using **MySQL**. The project covers database creation, data loading, data cleaning, exploratory SQL analysis, and advanced business insights.

The objective is to use SQL to understand sales performance, profitability, customer spending, product performance, shipping modes, regional performance, and city-level sales.

## 🛠️ Technologies Used

* MySQL
* MySQL Workbench
* SQL
* CSV Dataset

## 📂 Project Structure

```text
superstore-sales-sql-analysis/
│
├── sql/
│   ├── 01_database_setup.sql
│   ├── 02_data_cleaning.sql
│   ├── 03_sales_analysis.sql
│   └── 04_advanced_insights.sql
│
├── data/
│   └── cleaned_superstore.csv
│
└── README.md
```

## 🗄️ Database Setup

The project creates a MySQL database named `superstore_db` and a table named `orders_1`.

The table contains information such as:

* Order ID
* Order Date
* Ship Date
* Ship Mode
* Customer
* Segment
* Country
* City
* State
* Region
* Product
* Category
* Sub-Category
* Sales
* Quantity
* Discount
* Profit

The project also loads the Superstore CSV dataset into the MySQL table and converts the order and shipping dates into MySQL `DATE` format.

## 🧹 Data Cleaning

The data-cleaning stage includes:

* Checking for NULL values in Sales and Profit
* Removing duplicate records
* Checking records with negative profit
* Validating the resulting dataset

Duplicate records are identified using combinations of `Order_ID` and `Product_ID`.

## 📊 SQL Analysis

The project performs several analytical queries, including:

### Monthly Sales Trend

Calculates total sales for each month using `DATE_FORMAT()` and `SUM()`.

### Regional Performance

Analyzes:

* Total Sales by Region
* Total Profit by Region

### Category Performance

Calculates sales and profit for each product category.

### Loss-Making Products

Identifies products whose total profit is negative.

## 🔎 Advanced Business Insights

The project also contains queries for:

* Top 10 customers by total spending
* Top-selling products by quantity
* Profit percentage by category
* Shipping mode analysis
* Top cities by sales

These queries use SQL concepts such as:

* `GROUP BY`
* `ORDER BY`
* `SUM()`
* `COUNT()`
* `ROUND()`
* `HAVING`
* `LIMIT`
* `DATE_FORMAT()`

## 🎯 Key SQL Concepts Demonstrated

This project demonstrates practical use of:

```text
CREATE DATABASE
CREATE TABLE
LOAD DATA INFILE
SELECT
WHERE
GROUP BY
HAVING
ORDER BY
LIMIT
SUM()
COUNT()
ROUND()
DATE_FORMAT()
JOIN/Filtering concepts
Data Cleaning
```

## 🚀 How to Run the Project

### 1. Install MySQL

Install MySQL and MySQL Workbench.

### 2. Create the Database

Run:

```sql
CREATE DATABASE superstore_db;
USE superstore_db;
```

### 3. Create the Table

Run the SQL script:

```text
01_database_setup.sql
```

### 4. Load the Dataset

Place the CSV file in the appropriate MySQL import directory and execute the `LOAD DATA INFILE` query from the setup script.

### 5. Perform Data Cleaning

Run:

```text
02_data_cleaning.sql
```

### 6. Perform Sales Analysis

Run:

```text
03_sales_analysis.sql
```

### 7. Explore Advanced Insights

Run:

```text
04_advanced_insights.sql
```

## 📈 Project Objective

The main objective of this project is to demonstrate how SQL can be used to transform raw sales data into meaningful business insights.

The project also serves as a practical demonstration of MySQL skills for **Data Analyst and Data Science roles**.

## 👨‍💻 Author

**Bhavya K**

B.Tech CSE (Data Science) Student @ MITS | Aspiring Data Analyst

### Skills Demonstrated

`SQL` `MySQL` `Data Cleaning` `Data Analysis` `Business Analytics`
