-- Problem Name: Contest Leaderboard
-- Problem Description:
-- Find the total score of each hacker.
-- Exclude hackers whose total score is 0.
-- Sort by total score descending,
-- and hacker_id ascending for ties.
--
-- Solution:

SELECT H.HACKER_ID, H.NAME, SUM(S.SCORE) AS TOTAL_SCORE
FROM HACKERS H
JOIN SUBMISSIONS S
    ON H.HACKER_ID = S.HACKER_ID
GROUP BY H.HACKER_ID, H.NAME
HAVING SUM(S.SCORE) > 0
ORDER BY TOTAL_SCORE DESC, H.HACKER_ID ASC;
