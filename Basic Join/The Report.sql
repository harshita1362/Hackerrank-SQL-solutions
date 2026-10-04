-- Problem Name: The Report
-- Problem Description:
-- Generate a report containing Name, Grade and Marks.
-- For grades 8-10, display the student's name.
-- For grades below 8, display 'NULL' as the name.
-- Sort by Grade descending.
-- For grades 8-10, sort names alphabetically.
-- For grades below 8, sort marks ascending.
--
-- Solution:

SELECT
    CASE
        WHEN G.GRADE >= 8 THEN S.NAME
        ELSE 'NULL'
    END AS NAME,
    G.GRADE,
    S.MARKS
FROM STUDENTS S
JOIN GRADES G
    ON S.MARKS BETWEEN G.MIN_MARK AND G.MAX_MARK
ORDER BY
    G.GRADE DESC,
    CASE WHEN G.GRADE >= 8 THEN S.NAME END ASC,
    CASE WHEN G.GRADE < 8 THEN S.MARKS END ASC;
