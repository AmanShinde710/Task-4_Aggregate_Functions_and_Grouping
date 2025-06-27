-- Viewing all records
SELECT * FROM Students;

-- Total number of students
SELECT COUNT(*) AS TotalStudents FROM Students;

-- Average age of students
SELECT AVG(Age) AS AverageAge FROM Students;

-- Number of students by gender
SELECT Gender, COUNT(*) AS Count FROM Students GROUP BY Gender;

-- Average age by city
SELECT City, AVG(Age) AS AvgAge FROM Students GROUP BY City;

-- Minimum and Maximum age of students
SELECT MIN(Age) AS MinAge, MAX(Age) AS MaxAge FROM Students;

-- Total students by each city
SELECT City, COUNT(*) AS TotalStudents FROM Students GROUP BY City;

-- Gender-wise average age
SELECT Gender, AVG(Age) AS AvgAge FROM Students GROUP BY Gender;

-- Cities where average age is over 25
SELECT City, AVG(Age) AS AvgAge FROM Students GROUP BY City HAVING AVG(Age) > 25;

-- Count of male and female students per city
SELECT City, Gender, COUNT(*) AS Count
FROM Students
GROUP BY City, Gender
ORDER BY City;

-- Total students where age is not NULL
SELECT COUNT(*) AS ValidAgeCount FROM Students WHERE Age IS NOT NULL;