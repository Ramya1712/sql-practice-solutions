-- Problem: Weather Observation Station 16
-- Source: https://www.hackerrank.com/challenges/weather-observation-station-16/problem?isFullScreen=false
-- Difficulty: Easy

-- 📝 Explanation:
-- Query the smallest LAT_N greater than 38.7780 from STATION and round it to 4 decimal places.

select round(min(lat_n),4)
from station
where lat_n > 38.7880;


