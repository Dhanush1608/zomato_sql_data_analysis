# SQL Project: Data Analysis for Zomato - A Food Delivery Company

# 🍽️ Zomato SQL Case Study - Data Analysis Project

---

##  Project Overview

This case study simulates real-world business scenarios faced by **Zomato**, one of India’s largest food delivery platforms. It involves:

- Setting up a relational database
- Importing and cleaning data
- Answering complex business questions using **advanced SQL**

>  Note: All data is **synthetic** and generated for educational purposes.

---

##  Project Structure

- **Database Setup**: Creation of the `zomato_db` database and the required tables.  
- **Data Import**: Inserting sample data into the tables.  
- **Data Cleaning**: Handling null values and ensuring data integrity.  
- **Business Problems**: Solving 20 specific business problems using SQL queries.

---

## 🛠 Tech Stack

| Tool        | Usage                         |
|-------------|-------------------------------|
| PostgreSQL  | SQL database and queries      |
| pgAdmin 4   | GUI for interacting with DB   |
| Excel       | Data creation and formatting  |
| GitHub      | Version control & showcase    |

---

##  Database Schema

The following tables were created:

- `customers`: Contains customer info  
- `restaurants`: List of restaurant partners  
- `orders`: Order details  
- `deliveries`: Delivery logistics  
- `riders`: Contains riders info

> **Entity-Relationship Diagram (ERD)**  
> ![ERD](https://github.com/Dhanush1608/zomato_sql_data_analysis/blob/main/ERD_diagram.png)

---

##  Business Questions Answered

We solved 20+ real-world business problems using SQL, including:

1. What are the most frequently ordered dishes by a specific customer?
2. Identify peak order hours (in 2-hour windows).
3. Classify customers into **Gold** or **Silver** segments based on total spend.
4. Calculate **Customer Lifetime Value (CLV)**.
5. Track month-over-month revenue trends.
6. Which items spike during certain seasons?
7. Compute restaurant growth ratio since launch.

---

## 💻 Sample SQL Queries

```sql
-- 🏆 Customer Lifetime Value
SELECT customer_id, SUM(total_amount) AS clv
FROM orders
GROUP BY customer_id;

-- 🥇 Segment customers into Gold or Silver
SELECT customer_id,
  CASE 
    WHEN SUM(total_amount) > (SELECT AVG(total_amount) FROM orders)
    THEN 'Gold'
    ELSE 'Silver'
  END AS customer_segment
FROM orders
GROUP BY customer_id;
```
---

##  Conclusion

This project highlights my ability to handle complex SQL queries and provides solutions to real-world business problems in the context of a food delivery service like Zomato. The approach taken here demonstrates a structured problem-solving methodology, data manipulation skills, and the ability to derive actionable insights from data.

---

##  Notice

All customer names and data used in this project are computer-generated using AI and random functions.  
They do not represent real data associated with Zomato or any other entity.  
This project is solely for learning and educational purposes, and any resemblance to actual persons, businesses, or events is purely coincidental.

---
