-- Problem: Population Density Difference
-- Source:  https://www.hackerrank.com/challenges/population-density-difference/problem?isFullScreen=false
-- Difficulty: Easy

-- 📝 Explanation:
-- Compute the difference between the maximum and minimum city populations in the CITY table. Measures the density range.


select (max(population)-min(population)) as difference
from city ;