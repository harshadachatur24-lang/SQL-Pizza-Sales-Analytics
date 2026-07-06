# 🍕 Pizza Sales Analysis using SQL

> A comprehensive SQL-based data analysis project that explores pizza sales data to uncover business insights, customer purchasing behavior, revenue trends, and product performance.

---

# 📌 Project Overview

The Pizza Sales Analysis project is designed to analyze transactional sales data from a pizza restaurant using MySQL. The project demonstrates how SQL can be used to answer real-world business questions by performing data aggregation, joins, subqueries, window functions, and analytical queries.

The goal is to transform raw sales data into meaningful business insights that can support better decision-making.

---

# 🎯 Project Objectives

- Analyze pizza sales performance.
- Calculate total revenue generated.
- Identify best-selling pizzas.
- Understand customer ordering patterns.
- Find peak business hours.
- Analyze sales across pizza categories and sizes.
- Generate actionable business insights.

---

# 🛠️ Tech Stack

| Technology | Purpose |
|------------|----------|
| MySQL | Database |
| MySQL Workbench | SQL Development |
| SQL | Data Analysis |
| Power BI | Dashboard & Visualization |
| Microsoft Excel | Dataset |

---

# 📂 Dataset

The project consists of four relational tables.

### 1. orders

Contains order information including date and time.

| Column |
|---------|
| order_id |
| order_date |
| order_time |

---

### 2. order_details

Contains individual pizza orders.

| Column |
|---------|
| order_details_id |
| order_id |
| pizza_id |
| quantity |

---

### 3. pizzas

Contains pizza size and pricing.

| Column |
|---------|
| pizza_id |
| pizza_type_id |
| size |
| price |

---

### 4. pizza_types

Contains pizza names and categories.

| Column |
|---------|
| pizza_type_id |
| name |
| category |
| ingredients |

---

# 🗄️ Database Schema

The database follows a relational structure.

```
orders
   │
   │ order_id
   ▼
order_details
   │
   │ pizza_id
   ▼
pizzas
   │
   │ pizza_type_id
   ▼
pizza_types
```

---

# 📊 SQL Concepts Used

- SELECT
- WHERE
- ORDER BY
- GROUP BY
- Aggregate Functions
  - COUNT()
  - SUM()
  - AVG()
- INNER JOIN
- Subqueries
- Window Functions
- RANK()
- Date & Time Functions
- Aliases
- LIMIT

---

# ❓ Business Questions Solved

✔ Total number of orders placed

✔ Total revenue generated

✔ Highest-priced pizza

✔ Most ordered pizza size

✔ Top 5 ordered pizzas

✔ Quantity sold by category

✔ Orders by hour

✔ Category-wise pizza distribution

✔ Average pizzas ordered per day

✔ Top 3 pizzas by revenue

✔ Percentage contribution of each category

✔ Cumulative revenue over time

✔ Top pizzas within each category

---

# 📈 Key Business Insights

- Peak customer activity occurs during lunch and evening hours.
- Classic pizzas receive the highest number of orders.
- Large pizzas are among the most frequently purchased sizes.
- A small number of pizza varieties contribute a significant portion of total revenue.
- Revenue analysis helps identify high-performing products for inventory planning.

---

# 📊 Dashboard

An interactive Power BI dashboard was developed to visualize:

- Total Revenue
- Total Orders
- Total Pizzas Sold
- Average Order Value
- Top Selling Pizzas
- Revenue by Category
- Revenue by Pizza Size
- Orders by Hour
- Daily Sales Trend

---

# 📷 Dashboard Preview

>![alt text](<Screenshot 2026-07-03 110946.png>)

```

---

# 📁 Project Structure

```
SQL-Pizza-Sales-Project
│
├── Dataset
│   ├── orders.csv
│   ├── order_details.csv
│   ├── pizzas.csv
│   ├── pizza_types.csv
│   └── pizza_sales_dashboard_data.csv
│
├── SQL
│   └── pizza_sales_queries.sql
│
├── Dashboard
│   ├── Pizza Sales Dashboard.pbix
│   └── Dashboard.png
│
├── Screenshots
│   ├── Query1.png
│   ├── Query2.png
│   ├── Query3.png
│   └── Dashboard.png
│
└── README.md
```

---

# 🚀 Skills Demonstrated

- SQL Query Writing
- Relational Database Management
- Data Cleaning
- Data Aggregation
- Data Analysis
- Business Intelligence
- Data Visualization
- Dashboard Development
- Analytical Thinking
- Problem Solving

---

# 📌 Future Improvements

- Build an interactive web dashboard using Streamlit.
- Automate report generation.
- Perform customer segmentation.
- Develop sales forecasting models using Machine Learning.
- Deploy the project on the cloud.

---

# 👩‍💻 Author

**Harshada K. Chatur**

B.Sc. Data Science Student

Interested in Data Science, Machine Learning, SQL, Python, and Business Analytics.

---

# ⭐ If you found this project useful, consider giving it a star on GitHub.