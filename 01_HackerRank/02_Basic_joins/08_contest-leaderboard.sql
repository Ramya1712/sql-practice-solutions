-- Problem: Print leaderboard of hackers with total challenge score > 0, ordered by score desc.
-- Source: https://www.hackerrank.com/challenges/contest-leaderboard
-- Difficulty: Medium
-- 📝 Explanation:
-- Use a join and subquery to aggregate max score per challenge_id per hacker.
-- Then sum these, filter non-zero, and sort descending by total score, then hacker_id.




SELECT h.hacker_id, h.name, SUM(m.max_score) AS total_score
FROM hackers h
JOIN (
    SELECT hacker_id, challenge_id, MAX(score) AS max_score
    FROM submissions
    GROUP BY hacker_id, challenge_id
) m
    ON h.hacker_id = m.hacker_id
GROUP BY h.hacker_id, h.name
HAVING total_score <> 0
ORDER BY total_score DESC, h.hacker_id ASC;
