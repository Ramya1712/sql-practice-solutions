-- Problem: Weather Observation Station 15
-- Source: https://www.hackerrank.com/challenges/weather-observation-station-15/problem?isFullScreen=false
-- Difficulty: Easy

-- 📝 Explanation:
-- Get the LONG_W value associated with the largest LAT_N under 137.2345, rounded to 4 decimal places.


select round((long_w),4)
from station
group by long_w
having max(lat_n) = (select max(lat_n)
from station
where lat_n < 137.2345) ;