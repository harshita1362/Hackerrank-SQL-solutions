-- Problem Name: Ollivander's Inventory
-- Problem Description:
-- Find the minimum-cost non-evil wand for each age and power.
-- Sort by power descending, then age descending.
--
-- Solution:

SELECT W.ID, P.AGE, W.COINS_NEEDED, W.POWER
FROM WANDS W
JOIN WANDS_PROPERTY P
    ON W.CODE = P.CODE
WHERE P.IS_EVIL = 0
AND W.COINS_NEEDED = (
    SELECT MIN(W2.COINS_NEEDED)
    FROM WANDS W2
    JOIN WANDS_PROPERTY P2
        ON W2.CODE = P2.CODE
    WHERE P2.IS_EVIL = 0
    AND P2.AGE = P.AGE
    AND W2.POWER = W.POWER
)
ORDER BY W.POWER DESC, P.AGE DESC;
