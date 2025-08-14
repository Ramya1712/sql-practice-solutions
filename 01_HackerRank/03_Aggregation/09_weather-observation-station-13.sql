-- Problem: Weather Observation Station 13
-- Source: https://www.hackerrank.com/challenges/weather-observation-station-13/problem?isFullScreen=false
-- Difficulty: Easy

-- 📝 Explanation:
-- Sum the LAT_N values from STATION where LAT_N is between 38.7880 and 137.2345, then TRUNCATE the result to 4 decimal places.


select round(sum(lat_n),4)
from station
where lat_n between 38.7880 and 137.2345;
