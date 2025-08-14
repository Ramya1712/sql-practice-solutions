-- Problem: Top Earners
-- Source: https://www.hackerrank.com/challenges/earnings-of-employees/problem?isFullScreen=false
-- Difficulty: Easy

-- 📝 Explanation:
-- Identify the maximum total earnings (salary × months) among employees, and count how many employees achieve that maximum.

SELECT
    MAX(months * salary),
    COUNT(*)
FROM
    Employee
WHERE
    (months * salary) = (SELECT MAX(months * salary) FROM Employee);