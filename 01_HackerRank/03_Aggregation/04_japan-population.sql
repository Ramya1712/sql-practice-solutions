-- Problem: Japan Population
-- Source: https://www.hackerrank.com/challenges/japan-population/problem?isFullScreen=false
-- Difficulty: Easy

-- 📝 Explanation:
-- Sum the populations of all cities from Japan (CountryCode = 'JPN') in the CITY table. Gives total Japanese city population.


select (sum(population)) as total_population 
from city where COUNTRYCODE = 'JPN';



