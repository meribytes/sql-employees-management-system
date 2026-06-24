-- =====================================================
-- SQL Employee Management System
-- Author: Your Name
-- Description:
-- Collection of SQL queries demonstrating basic,
-- aggregate, JOIN, and advanced SQL concepts.
-- =====================================================

-- =====================================================
-- BASIC QUERIES
-- =====================================================

-- 1. View all employees
SELECT * FROM Employees;

-- 2. Employees older than 30
SELECT *
FROM Employees
WHERE Age > 30;

-- 3. Employees earning more than 70,000
SELECT FirstName, LastName, Salary
FROM Employees
WHERE Salary > 70000;

-- 4. Sort employees by highest salary
SELECT *
FROM Employees
ORDER BY Salary DESC;

-- 5. Sort employees alphabetically by last name
SELECT *
FROM Employees
ORDER BY LastName;

-- 6. Show unique departments assigned to employees
SELECT DISTINCT DepartmentID
FROM Employees;

-- 7. Employees hired after 2022
SELECT *
FROM Employees
WHERE HireDate > '2022-12-31';

-- 8. Employees between ages 25 and 30
SELECT *
FROM Employees
WHERE Age BETWEEN 25 AND 30;

-- 9. Employees whose last name starts with "M"
SELECT *
FROM Employees
WHERE LastName LIKE 'M%';

-- 10. Employees whose first name contains "an"
SELECT *
FROM Employees
WHERE FirstName LIKE '%an%';


-- =====================================================
-- AGGREGATE FUNCTION QUERIES
-- =====================================================

-- 11. Count the total number of employees
SELECT COUNT(*) AS TotalEmployees
FROM Employees;

-- 12. Calculate the average employee salary
SELECT AVG(Salary) AS AverageSalary
FROM Employees;

-- 13. Find the highest employee salary
SELECT MAX(Salary) AS HighestSalary
FROM Employees;

-- 14. Find the lowest employee salary
SELECT MIN(Salary) AS LowestSalary
FROM Employees;

-- 15. Calculate the total company payroll
SELECT SUM(Salary) AS TotalPayroll
FROM Employees;

-- 16. Count employees in each department
SELECT DepartmentID,
       COUNT(*) AS EmployeeCount
FROM Employees
GROUP BY DepartmentID;

-- 17. Calculate the average salary by department
SELECT DepartmentID,
       AVG(Salary) AS AverageSalary
FROM Employees
GROUP BY DepartmentID;

-- 18. Find the highest salary in each department
SELECT DepartmentID,
       MAX(Salary) AS HighestSalary
FROM Employees
GROUP BY DepartmentID;

-- 19. Calculate the total salary for each department
SELECT DepartmentID,
       SUM(Salary) AS TotalDepartmentSalary
FROM Employees
GROUP BY DepartmentID;

-- 20. Display departments with more than three employees
SELECT DepartmentID,
       COUNT(*) AS EmployeeCount
FROM Employees
GROUP BY DepartmentID
HAVING COUNT(*) > 3;


-- =====================================================
-- JOIN QUERIES
-- =====================================================

-- 21. Display employees with their department names
SELECT
    e.FirstName,
    e.LastName,
    d.DepartmentName
FROM Employees e
JOIN Departments d
ON e.DepartmentID = d.DepartmentID;

-- 22. Display projects with their department names
SELECT
    p.ProjectName,
    d.DepartmentName
FROM Projects p
JOIN Departments d
ON p.DepartmentID = d.DepartmentID;

-- 23. Display employees and the projects they are assigned to
SELECT
    e.FirstName,
    e.LastName,
    p.ProjectName
FROM Employees e
JOIN EmployeeProjects ep
ON e.EmployeeID = ep.EmployeeID
JOIN Projects p
ON ep.ProjectID = p.ProjectID;

-- 24. Count the number of projects assigned to each employee
SELECT
    e.FirstName,
    COUNT(*) AS NumberOfProjects
FROM Employees e
JOIN EmployeeProjects ep
ON e.EmployeeID = ep.EmployeeID
GROUP BY e.EmployeeID;

-- 25. Count the number of projects in each department
SELECT
    d.DepartmentName,
    COUNT(p.ProjectID) AS ProjectCount
FROM Departments d
LEFT JOIN Projects p
ON d.DepartmentID = p.DepartmentID
GROUP BY d.DepartmentID;


-- =====================================================
-- ADVANCED QUERIES
-- =====================================================

-- 26. Employees earning above the company average salary
SELECT *
FROM Employees
WHERE Salary >
(
    SELECT AVG(Salary)
    FROM Employees
);

-- 27. Find the highest-paid employee
SELECT *
FROM Employees
WHERE Salary =
(
    SELECT MAX(Salary)
    FROM Employees
);

-- 28. Departments with above-average salaries
SELECT
    DepartmentID,
    AVG(Salary) AS AverageSalary
FROM Employees
GROUP BY DepartmentID
HAVING AVG(Salary) >
(
    SELECT AVG(Salary)
    FROM Employees
);

-- 29. Employees working on more than one project
SELECT
    EmployeeID,
    COUNT(ProjectID) AS ProjectCount
FROM EmployeeProjects
GROUP BY EmployeeID
HAVING COUNT(ProjectID) > 1;

-- 30. Display the top five highest-paid employees
SELECT *
FROM Employees
ORDER BY Salary DESC
LIMIT 5;