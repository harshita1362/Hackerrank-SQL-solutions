-- Problem Name: Draw The Triangle 1
-- Problem Description:
-- P(R) represents a pattern drawn by Julia in R rows.
-- Print the pattern P(20).

-- Solution:

SELECT REPEAT('* ', @n := @n - 1)
FROM information_schema.tables,
     (SELECT @n := 21) AS temp
LIMIT 20;
