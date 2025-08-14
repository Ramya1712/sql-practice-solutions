-- Problem: Weather Observation Station 19
-- Source: https://www.hackerrank.com/challenges/weather-observation-station-19/problem?isFullScreen=false
-- Difficulty: Medium

-- 📝 Explanation:
-- Calculate the Euclidean distance between the points (min LAT_N, min LONG_W) and (max LAT_N, max LONG_W), formatting to 4 decimal digits.


with lat_n as(
select min(lat_n) as a, max(lat_n) as b from station) ,

long_w as(
select min(long_w) as c, max(long_w) as d from station) 

select round(SQRT(POW(a - b, 2) + POW(c-d, 2)),4) as distance
from lat_n m, long_w mi;

