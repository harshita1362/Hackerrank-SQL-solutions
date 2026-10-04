-- Problem Name: Top Competitors
-- Problem Description:
-- Print the hacker_id and name of hackers who achieved full scores
-- for more than one challenge.
-- Order by total full-score challenges descending,
-- and hacker_id ascending for ties.
--
-- Solution:

SELECT H.HACKER_ID, H.NAME
FROM HACKERS H
JOIN SUBMISSIONS S
    ON H.HACKER_ID = S.HACKER_ID
JOIN CHALLENGES C
    ON S.CHALLENGE_ID = C.CHALLENGE_ID
JOIN DIFFICULTY D
    ON C.DIFFICULTY_LEVEL = D.DIFFICULTY_LEVEL
WHERE S.SCORE = D.SCORE
GROUP BY H.HACKER_ID, H.NAME
HAVING COUNT(*) > 1
ORDER BY COUNT(*) DESC, H.HACKER_ID ASC;
