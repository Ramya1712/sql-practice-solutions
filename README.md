# 🚀 SQL Practice Problems & Solutions  

A **curated, high-quality collection** of SQL practice problems and solutions — from **beginner** to **advanced** — designed to demonstrate problem-solving skills, query optimization, and clean coding practices.  

This repository serves as both:
1. A **learning log** to track SQL progress.
2. A **portfolio** showcasing real-world query-writing ability for data engineering, analytics, and interview preparation.

---

📌 Why This Repo?
This is not just a collection of queries — it’s a living record of my SQL growth, designed to:

Build mastery through consistent practice.

Showcase optimization techniques employers look for.

Serve as a quick reference for future projects.

---

## 📂 Folder Structure
01_HackerRank/   → Solutions for HackerRank SQL problems
02_LeetCode/     → Solutions for LeetCode SQL problems
03_StrataScratch/ → Solutions for StrataScratch SQL challenges
04_DataLemur/    → Solutions for DataLemur interview-style questions
05_Resources/    → SQL cheat sheets, quick notes, and study guides

---

## 🧠 Problem-Solving Approach
1. **Understand the requirements** — clarify expected output, constraints, and data relationships.  
2. **Design the query** — select optimal joins, filters, and aggregations.  
3. **Optimize** — rewrite queries to reduce execution time and improve readability.  
4. **Document** — add clear comments and explanations for maintainability.  

---

## 🛠 Skills Demonstrated
- **Data Retrieval & Filtering** (`SELECT`, `WHERE`, `ORDER BY`, `LIMIT`)  
- **Joins & Relationships** (`INNER JOIN`, `LEFT JOIN`, `RIGHT JOIN`, `FULL JOIN`)  
- **Aggregation & Grouping** (`GROUP BY`, `HAVING`, aggregate functions)  
- **Subqueries & CTEs** (Common Table Expressions)  
- **Window Functions** (`RANK`, `ROW_NUMBER`, `LEAD`, `LAG`)  
- **Query Optimization Techniques** (indexes, execution plans)  

---

## 🚀 Platforms Covered
- [HackerRank](https://www.hackerrank.com/)  
- [LeetCode](https://leetcode.com/)  
- [DataLemur](https://datalemur.com/)  
- [StrataScratch](https://www.stratascratch.com/)  

---

## 📖 How to Use
- Navigate to the **platform folder** you want to explore.  
- Each problem file contains:  
  - **Problem Statement** (as comments or a link to the original source)  
  - **SQL Solution** (formatted and optimized)  
  - **Explanation** of logic and performance considerations  

Example:
```sql
-- Problem: Find customers who purchased more than 5 items in a month
-- Source: LeetCode #XYZ
-- Approach: Use GROUP BY with HAVING to filter aggregated counts

SELECT customer_id
FROM sales
GROUP BY customer_id
HAVING COUNT(*) > 5;
```
📌 Contribution & Feedback
Feedback is welcome!
If you spot improvements or have optimization ideas, feel free to open a pull request or create an issue.
