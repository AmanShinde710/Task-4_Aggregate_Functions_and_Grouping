# 📈 SQL Task: Aggregate Functions & Grouping (Task 4)

This task demonstrates the use of **aggregate functions** and **GROUP BY** in SQL to summarize and analyze data using a sample student dataset.

---

## 🎯 Objective

- Apply `SUM`, `COUNT`, `AVG` to numeric columns
- Categorize data using `GROUP BY`
- Filter grouped results using `HAVING`

---

## 🧱 Table Structure

**Students**
| Column     | Type         | Description              |
|------------|--------------|--------------------------|
| StudentID  | INT (PK)     | Unique student ID        |
| Name       | VARCHAR(100) | Student Full name        |
| Email      | VARCHAR(150) | Email address            |
| Age        | INT          | Student's age            |
| Gender     | VARCHAR(5)   | M / F                    |
| City       | VARCHAR(100) | City of residence        |

---

## 🔢 Sample Queries

```sql
-- Total number of students
SELECT COUNT(*) FROM Students;

-- Average age of students
SELECT AVG(Age) FROM Students;

-- Number of students by gender
SELECT Gender, COUNT(*) FROM Students GROUP BY Gender;

-- Cities with more than 5 students
SELECT City, COUNT(*) FROM Students GROUP BY City HAVING COUNT(*) > 5;

-- Minimum and Maximum age of students
SELECT MIN(Age) AS MinAge, MAX(Age) AS MaxAge FROM Students;

-- Average age by city
SELECT City, AVG(Age) AS AvgAge FROM Students GROUP BY City;
