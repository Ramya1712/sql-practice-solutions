-- Problem: Revising Aggregations – The Sum Function
-- Source: https://www.hackerrank.com/challenges/revising-aggregations-the-sum-function
-- Difficulty: Easy

-- 📝 Explanation:
-- Sum the populations of all cities in the CITY table located in the District 'California'. Tallies total population for that district.

select sum(population) as total_population 
from city where district = 'California';