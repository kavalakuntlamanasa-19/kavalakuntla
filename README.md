# Warehouse and Retail Sales SQL Analysis

This project contains a collection of SQL queries designed to analyze sales data from a dataset named `Warehouse_and_Retail_Sales$`. The queries help derive insights on retail and warehouse sales across various dimensions such as suppliers, item types, and months.

## 📂 File

- **Sql query 2.sql**: Contains all the SQL queries used for analyzing the sales data.

## 🧠 Queries Overview

1. **Total Retail Sales per Supplier**
   - Summarizes the total retail sales grouped by supplier.

2. **Top Item by Warehouse Sales**
   - Identifies the item with the highest warehouse sales.

3. **Total Sales per Item Type**
   - Aggregates both retail and warehouse sales grouped by item type.

4. **Month with Highest Retail Transfers**
   - Determines which month had the highest total of retail transfers.

5. **Suppliers with High Retail Sales**
   - Lists suppliers whose total retail sales exceed a certain threshold.

## 🛠️ Requirements

- Microsoft SQL Server (or compatible SQL engine)
- Access to the `Warehouse_and_Retail_Sales$` table in your database

## 🚀 Usage

1. Open your SQL Server Management Studio (SSMS) or any SQL editor.
2. Load and run the `Sql query 2.sql` file.
3. Review the results of each query to gather business insights.

## 📊 Dataset Schema (Assumed)

The queries assume a table with columns:
- `SUPPLIER`
- `RETAIL SALES`
- `WAREHOUSE SALES`
- `ITEM DESCRIPTION`
- `ITEM TYPE`
- `MONTH`
- `RETAIL TRANSFERS`

> Adjust column names or table references based on your actual schema if necessary.

## 📌 Notes

- Make sure your table name and column names match those used in the queries.
- Some queries use aggregation (`SUM`) and ordering (`ORDER BY`) to rank and filter data.

---

Let me know if you want this saved to a file or customized further!
