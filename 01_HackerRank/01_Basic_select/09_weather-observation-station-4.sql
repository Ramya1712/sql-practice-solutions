-- Problem : Find the difference between the total number of CITY entries in the table and the number of distinct CITY entries in the table.
-- Source: https://www.hackerrank.com/challenges/weather-observation-station-4/problem?isFullScreen=false
-- Difficulty: Easy

-- 📝 Explanation:
-- Select a unique city count and total city count to find the difference from station table using count function.
-- No filters

select count(city)-count(distinct(city)) as difference
from station;
