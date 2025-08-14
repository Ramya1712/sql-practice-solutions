-- Problem: Revising Aggregations – The Count Function
-- Source: https://www.hackerrank.com/challenges/revising-aggregations-the-count-function
-- Difficulty: Easy

-- 📝 Explanation:
-- Count the number of cities in the CITY table with Population > 100000. This returns the number of large cities.

select count(name)
from city where population > 100000;