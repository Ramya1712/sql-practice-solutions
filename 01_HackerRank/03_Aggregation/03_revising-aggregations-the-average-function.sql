
-- Problem: Revising Aggregations – Averages
-- Source: https://www.hackerrank.com/challenges/revising-aggregations-the-average-function
-- Difficulty: Easy

-- 📝 Explanation:
-- Calculate the average population of all cities in the CITY table where District is 'California'. Shows typical city size in that district.

select floor(avg(population)) as average_population 
from city;