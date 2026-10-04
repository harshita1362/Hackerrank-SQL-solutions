-- Problem Name: SQL Project Planning
-- Problem Description:
-- Group consecutive tasks into projects and display the
-- start and end dates of each project.
-- Sort by project duration, then by start date.

-- Input Format:
-- The Projects table contains:
-- Task_ID   : ID of the task
-- Start_Date: Start date of the task
-- End_Date  : End date of the task

-- Solution:

SELECT MIN(Start_Date), MAX(End_Date)
FROM (
    SELECT Start_Date, End_Date,
           ROW_NUMBER() OVER (ORDER BY Start_Date) -
           ROW_NUMBER() OVER (ORDER BY End_Date) AS grp
    FROM Projects
) x
GROUP BY grp
ORDER BY DATEDIFF(MAX(End_Date), MIN(Start_Date)),
         MIN(Start_Date);
