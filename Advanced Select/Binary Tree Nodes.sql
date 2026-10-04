-- Problem Name: Binary Tree Nodes
-- Problem Description:
-- Write a query to find the node type of Binary Tree ordered by the value of the node.
-- Output one of: Root, Leaf, Inner.

-- Input Format:
-- The BST table contains:
-- N: Node value
-- P: Parent node value

-- Solution:

SELECT N,
CASE
    WHEN P IS NULL THEN 'Root'
    WHEN N NOT IN (SELECT P FROM BST) THEN 'Leaf'
    ELSE 'Inner'
END
FROM BST
ORDER BY N;
