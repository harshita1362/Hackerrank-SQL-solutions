-- Problem Name: Symmetric Pairs
-- Problem Description:
-- Find all symmetric pairs (X, Y) where (Y, X) also exists.
-- Return pairs in ascending order of X, with X <= Y.
--
-- Input Format:
-- The Functions table contains:
--
-- Column    Type
-- X         Integer
-- Y         Integer
--
-- Solution:

SELECT f1.X, f1.Y
FROM Functions f1
JOIN Functions f2
    ON f1.X = f2.Y
    AND f1.Y = f2.X
WHERE f1.X < f1.Y
GROUP BY f1.X, f1.Y

UNION

SELECT X, Y
FROM Functions
WHERE X = Y
GROUP BY X, Y
HAVING COUNT(*) > 1

ORDER BY X;
