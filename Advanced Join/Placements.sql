-- Problem Name: Placements
-- Problem Description:
-- Find the names of students whose best friends
-- received a higher salary offer than them.
-- Sort the names by the salary offered to their best friends.

-- Input Format:
-- Students(ID, Name)
-- Friends(ID, Friend_ID)
-- Packages(ID, Salary)

-- Solution:

SELECT S.Name
FROM Students S
JOIN Friends F ON S.ID = F.ID
JOIN Packages P1 ON S.ID = P1.ID
JOIN Packages P2 ON F.Friend_ID = P2.ID
WHERE P2.Salary > P1.Salary
ORDER BY P2.Salary;
