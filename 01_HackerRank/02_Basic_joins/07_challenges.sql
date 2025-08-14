-- Problem: For each hacker, find max score across challenges and list details.
-- Source: https://www.hackerrank.com/challenges/challenges
-- Difficulty: Medium
-- 📝 Explanation:
-- Join HACKERS and CHALLENGES.
-- Group by hacker_id, compute COUNT or MAX as needed, then ORDER or filter using HAVING.


WITH challenge_counts AS (
    SELECT h.hacker_id, name, COUNT(c.challenge_id) AS cnt
    FROM Hackers h 
    JOIN Challenges c ON h.hacker_id = c.hacker_id
    GROUP BY h.hacker_id, name
)
SELECT hacker_id, name, cnt
FROM challenge_counts
WHERE cnt = (SELECT MAX(cnt) FROM challenge_counts)
   OR (cnt < (SELECT MAX(cnt) FROM challenge_counts)
       AND cnt IN (
           SELECT cnt 
           FROM challenge_counts
           GROUP BY cnt
           HAVING COUNT(*) = 1
       ))
ORDER BY cnt DESC, hacker_id ASC;

