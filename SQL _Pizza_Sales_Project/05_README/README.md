# 🍕 Pizza Sales Analysis using SQL

> A comprehensive SQL-based data analysis project that explores pizza sales data to uncover business insights, customer purchasing behavior, revenue trends, and product performance.

---

# 📌 Project Overview

The Pizza Sales Analysis project is designed to analyze transactional sales data from a pizza restaurant using MySQL. This project demonstrates how SQL can be used to answer real-world business questions by performing data aggregation, joins, subqueries, window functions, and analytical queries.

The primary objective is to transform raw sales data into meaningful business insights that support data-driven decision-making.

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

```text
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

- ✔ Total number of orders placed
- ✔ Total revenue generated
- ✔ Highest-priced pizza
- ✔ Most ordered pizza size
- ✔ Top 5 ordered pizzas
- ✔ Quantity sold by category
- ✔ Orders by hour
- ✔ Category-wise pizza distribution
- ✔ Average pizzas ordered per day
- ✔ Top 3 pizzas by revenue
- ✔ Percentage contribution of each category
- ✔ Cumulative revenue over time
- ✔ Top pizzas within each category

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
- Revenue by Category
- Revenue by Pizza Size
- Orders by Hour
- Daily Sales Trend
- Top Selling Pizza Types

---

# 📷 Dashboard Preview

<p align="center">
  <img src="04_Screenshots/Dashboard/Screenshot 2026-07-03 110946.png" width="100%">
</p>

---

# 📁 Project Structure

| Folder / File | Description |
|---------------|-------------|
| 📂 01_Datasets | Contains all raw CSV datasets used for analysis. |
| 📂 02_SQL | SQL queries written to solve business problems and generate insights. |
| 📂 03_Dashboard | Power BI dashboard (.pbix) file with interactive visualizations. |
| 📂 04_Screenshots | Dashboard preview and SQL query output screenshots. |
| 📂 05_README | Additional documentation (if applicable). |
| 📄 README.md | Complete project documentation and project overview. |

---

# 🚀 Skills Demonstrated

### SQL Skills

- Data Retrieval using SELECT
- Data Filtering using WHERE
- Sorting Data using ORDER BY
- Grouping and Aggregation
- Aggregate Functions
- INNER JOIN
- Subqueries
- Window Functions
- Date & Time Functions

### Data Analysis Skills

- Revenue Analysis
- Sales Trend Analysis
- Product Performance Analysis
- Category-wise Analysis
- KPI Calculation
- Business Insight Generation

### Business Intelligence Skills

- Dashboard Development
- Interactive Filtering
- KPI Design
- Data Visualization
- Business Storytelling

### Soft Skills

- Analytical Thinking
- Problem Solving
- Business Understanding
- Data Interpretation

---

# 📌 Future Enhancements

- Build an interactive Streamlit dashboard.
- Connect Power BI directly with MySQL.
- Automate report generation.
- Perform customer segmentation.
- Develop sales forecasting models using Machine Learning.
- Deploy the complete project on the cloud.

---

# 👩‍💻 Author

## Harshada K. Chatur

**B.Sc. Data Science Student**

Passionate about Data Science, SQL, Python, Machine Learning, Data Analytics, and Business Intelligence.

### Connect with Me

- 📧 Email: harshadachatur24@gmail.com
- 💼 LinkedIn: https://www.linkedin.com/in/harshada-chatur-1ab649418
- 💻 GitHub: https://github.com/harshadachatur24-lang

---

# ⭐ Support

If you found this project useful, consider giving it a ⭐ on GitHub.

Your support motivates me to build more real-world Data Science and Analytics projects.
