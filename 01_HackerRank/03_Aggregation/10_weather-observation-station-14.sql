-- Problem: Weather Observation Station 14
-- Source: https://www.hackerrank.com/challenges/weather-observation-station-14/problem?isFullScreen=false

-- Difficulty: Easy

-- 📝 Explanation:
-- Find the greatest LAT_N in STATION that’s less than 137.2345 and TRUNCATE it to 4 decimal places.


select round(max(lat_n),4)
from station
where lat_n < 137.2345;