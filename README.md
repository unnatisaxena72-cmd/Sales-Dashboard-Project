# Retail Sales Performance Dashboard

A data analytics project that uses **SQL** for business-question analysis and **Power BI** for interactive dashboard visualization, built on the Sample Superstore retail dataset.

## Overview

This project analyzes retail sales data to answer key business questions around product performance, regional sales, customer segments, and profitability. SQL was used to extract and aggregate insights from raw transactional data, and Power BI was used to turn those insights into an interactive, filterable dashboard.

## Tools Used

- **SQLite (DB Browser for SQLite)** — data storage and SQL querying
- **Power BI Desktop** — dashboard design and data visualization
- **Excel** — initial data inspection

## Dataset

Sample Superstore retail dataset containing order-level details: Region, Category, Sub-Category, Sales, Quantity, Discount, Profit, Customer Segment, and Shipping Mode.

> Note: this version of the dataset does not include order dates or product-level detail, so analysis is done at the sub-category, region, and segment level.

## Business Questions Answered (SQL)

All queries are in [`business_questions.sql`](./business_questions.sql).

1. Top-selling sub-categories by total sales
2. Regional performance (sales and profit by region)
3. Category-wise profit margin
4. Loss-making sub-categories (negative profit)
5. Sales and units by customer segment
6. Top 10 states by sales
7. Top 10 cities by sales
8. Impact of discount level on profit
9. Sales and order count by shipping mode

## Dashboard

Built in Power BI Desktop ([`Sales_Dashboard.pbix`](./Sales_Dashboard.pbix)), featuring:

- KPI cards: Total Sales, Total Profit, Total Quantity
- Sales by Region (bar chart)
- Sales by Segment (donut chart)
- Top Sub-Categories by Sales (bar chart)
- Region filter (slicer) for interactive exploration

![Dashboard Screenshot](./screenshots/dashboard_overview.png)

## Key Insights

- Total sales across the dataset reached **2.30M**, with total profit of **286.40K**.
- The **West** region generated the highest sales, followed by East, Central, and South.
- The **Consumer** segment drove the largest share of sales (50.56%), followed by Corporate (30.74%) and Home Office (18.7%).
- **Phones** and **Chairs** were the top-performing sub-categories by sales.
- Several sub-categories showed negative profit despite strong sales, pointing to a discounting or cost issue worth investigating further.

## Project Structure

```
sales-dashboard-project/
├── README.md
├── business_questions.sql
├── Sales_Dashboard.pbix
├── dataset/
│   └── Sample-Superstore.csv
└── screenshots/
    └── dashboard_overview.png
```

## Author

Built as a self-guided data analyst portfolio project using free tools only.
