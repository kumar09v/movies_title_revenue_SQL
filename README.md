# 🎬 SQL Practice – Movies Revenue Analysis

This project is created for **practice purposes** using the **Movies Database** in **MySQL RDBMS**.  
The task was to help a **Business Manager** find the **Revenue of all movies along with their titles** by working with two related tables.

---

## 🔹 Problem Statement
The Business Manager wants:
- A list of **movie titles** with their **revenue**.  
- Data should be extracted by combining the `movies` table and the `financials` table from the database.  
- Queries must include the use of `JOIN`, `CASE`, and `ORDER BY` clauses to solve the requirement.

---

## 🔹 SQL Concepts Used

### 1. JOIN
- Combined the `movies` and `financials` tables using a **common key** (usually `movie_id`).
- Ensures each movie’s financial details are mapped correctly to its title.

**Example:**
```sql
SELECT 
    m.title, 
    f.revenue
FROM movies m
JOIN financials f 
    ON m.movie_id = f.movie_id;
2. CASE
Applied to handle conditional logic within queries (e.g., labeling revenue ranges).

Example:

sql
Copy
Edit
SELECT 
    m.title,
    f.revenue,
    CASE 
        WHEN f.revenue >= 100000000 THEN 'Blockbuster'
        WHEN f.revenue >= 50000000  THEN 'Hit'
        ELSE 'Average/Flop'
    END AS category
FROM movies m
JOIN financials f 
    ON m.movie_id = f.movie_id;
