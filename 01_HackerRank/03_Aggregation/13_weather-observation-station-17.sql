-- Problem: Weather Observation Station 17
-- Source: https://www.hackerrank.com/challenges/weather-observation-station-17/problem?isFullScreen=false
-- Difficulty: Easy

-- 📝 Explanation:
-- Fetch the LONG_W for the smallest LAT_N that’s greater than 38.7780, rounding to 4 decimal places.

select round((long_w),4)
from station
where lat_n > 38.7880
group by long_w
having min(lat_n) = (select min(lat_n)
from station
where lat_n > 38.7880 );
