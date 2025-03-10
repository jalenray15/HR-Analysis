-- ==============================
-- SETUP: Create Database and Table
-- ==============================

CREATE DATABASE IF NOT EXISTS hr_database;
USE hr_database;

DROP TABLE IF EXISTS hr_employee_data;
CREATE TABLE hr_employee_data (
    Attrition VARCHAR(5),
    Business_Travel VARCHAR(50),
    CF_age_band VARCHAR(20),
    CF_attrition_label VARCHAR(50),
    Department VARCHAR(50),
    Education_Field VARCHAR(50),
    Emp_No VARCHAR(50),
    Employee_Number INT PRIMARY KEY,
    Gender VARCHAR(10),
    Job_Role VARCHAR(100),
    Marital_Status VARCHAR(20),
    Monthly_Income INT,
    Num_Companies_Worked INT,
    Over18 VARCHAR(5),
    OverTime VARCHAR(5),
    Percent_Salary_Hike INT,
    Performance_Rating INT,
    Relationship_Satisfaction INT,
    Standard_Hours INT,
    Stock_Option_Level INT,
    Total_Working_Years INT,
    Work_Life_Balance INT,
    Years_At_Company INT,
    Years_In_Current_Role INT,
    Years_Since_Last_Promotion INT,
    Years_With_Curr_Manager INT
);

-- ==============================
-- LOAD DATA INTO TABLE
-- ==============================
LOAD DATA LOCAL INFILE '/Users/jalenray/Documents/Data Analysis/Port/HR/cleaned_HR_Data.csv'
INTO TABLE hr_employee_data 
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

-- View all data to confirm successful load
SELECT * FROM hr_employee_data;

-- ==============================
-- ATTRITION ANALYSIS
-- ==============================

-- Attrition Rate by Department
SELECT 
    Department,
    COUNT(CASE WHEN Attrition = 'Yes' THEN 1 END) AS Employees_Left,
    COUNT(*) AS Total_Employees,
    ROUND((COUNT(CASE WHEN Attrition = 'Yes' THEN 1 END) / COUNT(*)) * 100, 2) AS Attrition_Rate
FROM hr_employee_data
GROUP BY Department
ORDER BY Attrition_Rate DESC;

-- Attrition by Job Role
SELECT 
    Job_Role,
    COUNT(CASE WHEN Attrition = 'Yes' THEN 1 END) AS Employees_Left,
    COUNT(*) AS Total_Employees,
    ROUND((COUNT(CASE WHEN Attrition = 'Yes' THEN 1 END) / COUNT(*)) * 100, 2) AS Attrition_Rate
FROM hr_employee_data
GROUP BY Job_Role
ORDER BY Attrition_Rate DESC;

-- Attrition Rate by Age Group
SELECT 
    CF_age_band AS Age_Group, 
    COUNT(CASE WHEN Attrition = 'Yes' THEN 1 END) AS Employees_Left,
    COUNT(*) AS Total_Employees,
    ROUND((COUNT(CASE WHEN Attrition = 'Yes' THEN 1 END) / COUNT(*)) * 100, 2) AS Attrition_Rate
FROM hr_employee_data
GROUP BY CF_age_band
ORDER BY Attrition_Rate DESC;

-- Attrition Rate by Employee Tenure (Years at Company)
SELECT 
    Years_At_Company,
    COUNT(CASE WHEN Attrition = 'Yes' THEN 1 END) AS Employees_Left,
    COUNT(*) AS Total_Employees,
    ROUND((COUNT(CASE WHEN Attrition = 'Yes' THEN 1 END) / COUNT(*)) * 100, 2) AS Attrition_Rate
FROM hr_employee_data
GROUP BY Years_At_Company
ORDER BY Years_At_Company ASC;

-- Years Since Last Promotion vs. Attrition
SELECT 
    Years_Since_Last_Promotion,
    COUNT(CASE WHEN Attrition = 'Yes' THEN 1 END) AS Employees_Left,
    COUNT(*) AS Total_Employees,
    ROUND((COUNT(CASE WHEN Attrition = 'Yes' THEN 1 END) / COUNT(*)) * 100, 2) AS Attrition_Rate
FROM hr_employee_data
GROUP BY Years_Since_Last_Promotion
ORDER BY Years_Since_Last_Promotion DESC;

-- Gender and Attrition Analysis
SELECT 
    Gender,
    COUNT(CASE WHEN Attrition = 'Yes' THEN 1 END) AS Employees_Left,
    COUNT(*) AS Total_Employees,
    ROUND((COUNT(CASE WHEN Attrition = 'Yes' THEN 1 END) / COUNT(*)) * 100, 2) AS Attrition_Rate
FROM hr_employee_data
GROUP BY Gender;

-- ==============================
-- EMPLOYEE DEMOGRAPHICS
-- ==============================

-- Number of Employees in Each Age Group
SELECT 
    CF_age_band AS Age_Group, 
    COUNT(*) AS Total_Employees
FROM hr_employee_data
GROUP BY CF_age_band
ORDER BY CF_age_band;

-- ==============================
-- COMPENSATION ANALYSIS
-- ==============================

-- Average Salary by Department
SELECT 
    Department, 
    ROUND(AVG(Monthly_Income), 2) AS Avg_Salary,
    MIN(Monthly_Income) AS Min_Salary,
    MAX(Monthly_Income) AS Max_Salary
FROM hr_employee_data
GROUP BY Department
ORDER BY Avg_Salary DESC;

-- ==============================
-- WORKFORCE ENGAGEMENT ANALYSIS
-- ==============================

-- Work-Life Balance vs. Performance Rating
SELECT 
    Work_Life_Balance, 
    ROUND(AVG(Performance_Rating), 2) AS Avg_Performance_Rating,
    COUNT(*) AS Employee_Count
FROM hr_employee_data
GROUP BY Work_Life_Balance
ORDER BY Work_Life_Balance ASC;

-- Employees Eligible for Promotion
SELECT 
    Employee_Number, Job_Role, Department, 
    Performance_Rating, Years_Since_Last_Promotion
FROM hr_employee_data
WHERE Performance_Rating >= 4 
AND Years_Since_Last_Promotion >= 3
ORDER BY Years_Since_Last_Promotion DESC;
