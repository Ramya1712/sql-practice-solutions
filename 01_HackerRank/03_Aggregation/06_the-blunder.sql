-- Problem: The Blunder
-- Source: https://www.hackerrank.com/challenges/the-blunder/problem?isFullScreen=false
-- Difficulty: Easy

-- 📝 Explanation:
-- Determine the error in Samantha’s average salary calculation by comparing the actual average to one computed after removing zeros from salaries. Round the result upward with CEIL.


select ceil(avg(salary)-avg(replace(salary,'0','')) )
from employees;
