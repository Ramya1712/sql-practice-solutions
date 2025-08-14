-- Problem: Weather Observation Station 2
-- Source: https://www.hackerrank.com/challenges/weather-observation-station-2/problem?isFullScreen=false
-- Difficulty: Easy

-- 📝 Explanation:
-- Sum all LAT_N and LONG_W values from the STATION table, rounding both to two decimal places.



select round(sum(lat_n),2),round(sum(long_w),2)
from station;
