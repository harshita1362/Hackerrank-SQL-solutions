-- Problem Name: Challenges
-- Problem Description:
-- Find hacker_id, name and total challenges created.
-- Exclude hackers who have the same challenge count
-- as others when that count is not the maximum.
-- Sort by challenge count descending, then hacker_id ascending.

SELECT H.HACKER_ID, H.NAME, COUNT(C.CHALLENGE_ID) AS CHALLENGES_CREATED
FROM HACKERS H
JOIN CHALLENGES C
    ON H.HACKER_ID = C.HACKER_ID
GROUP BY H.HACKER_ID, H.NAME
HAVING COUNT(C.CHALLENGE_ID) = (
    SELECT MAX(CHALLENGE_COUNT)
    FROM (
        SELECT COUNT(*) AS CHALLENGE_COUNT
        FROM CHALLENGES
        GROUP BY HACKER_ID
    ) X
)
OR COUNT(C.CHALLENGE_ID) IN (
    SELECT CHALLENGE_COUNT
    FROM (
        SELECT COUNT(*) AS CHALLENGE_COUNT
        FROM CHALLENGES
        GROUP BY HACKER_ID
    ) Y
    GROUP BY CHALLENGE_COUNT
    HAVING COUNT(*) = 1
)
ORDER BY CHALLENGES_CREATED DESC, H.HACKER_ID ASC;
