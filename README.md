# 📊 SQL Sales Analysis Project

## 📌 Overview

This project focuses on analyzing a retail sales dataset using SQL to extract meaningful business insights.
The goal is to answer key business questions such as identifying top-performing regions, categories, and overall sales trends.

---

## 🎯 Objectives

* Analyze total sales performance
* Identify top-performing regions and categories
* Understand customer and product trends
* Practice real-world SQL queries for data analysis

---

## 🗂️ Dataset

* Dataset Name: **Superstore Sales Dataset**
* Contains information about:

  * Orders
  * Customers
  * Products
  * Sales & Profit
  * Regions & Categories

---

## 🛠️ Tools & Technologies

* SQL (MySQL / PostgreSQL)
* Excel (for data preview)
* Git & GitHub

---

## 🧱 Database Setup

```sql
CREATE DATABASE IF NOT EXISTS Supermarket;
USE Supermarket;
```

---

## 📊 Key SQL Queries & Insights

### 🔹 1. Total Sales by Region

```sql
SELECT region, SUM(sales) AS total_sales
FROM super_store
GROUP BY region;
```

---

### 🔹 2. Highest Sales Region

```sql
SELECT region, SUM(sales) AS total_sales
FROM super_store
GROUP BY region
ORDER BY total_sales DESC
LIMIT 1;
```

---

### 🔹 3. Sales by Category

```sql
SELECT category, SUM(sales) AS total_sales
FROM super_store
GROUP BY category;
```

---

### 🔹 4. Top-Selling Category

```sql
SELECT category, SUM(sales) AS total_sales
FROM super_store
GROUP BY category
ORDER BY total_sales DESC
LIMIT 1;
```

---

### 🔹 5. Total Number of Orders

```sql
SELECT COUNT(*) AS total_orders
FROM super_store;
```

---

### 🔹 6. Profit Analysis

```sql
SELECT SUM(profit) AS total_profit
FROM super_store;
```

---

## 📈 Key Insights

* 🥇 The **West region** generated the highest sales
* 📦 Certain categories outperform others consistently
* 📊 Sales distribution varies across regions
* 💰 Profit trends help identify business efficiency

---

## 📷 Sample Output

(Add screenshots of your SQL results here)

---

## 🚀 How to Run

1. Import dataset into SQL database
2. Create database using provided script
3. Run queries from the project
4. Analyze results

---

## 📌 Future Improvements

* Add Power BI dashboard
* Automate reports
* Add advanced SQL queries (joins, window functions)

---

## 🙌 Author

**Reshmi Bar**

---

## ⭐ If you like this project

Give it a ⭐ on GitHub!

