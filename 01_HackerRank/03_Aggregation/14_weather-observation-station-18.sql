-- Problem: Weather Observation Station 18
-- Source: https://www.hackerrank.com/challenges/weather-observation-station-18/problem?isFullScreen=false

-- Difficulty: Medium

-- 📝 Explanation:
-- Compute the Manhattan distance between the points defined by min/max LAT_N and LONG_W and round to 4 decimal places.

with min_distance as(
select min(lat_n) as a, min(long_w) as b from station) ,

max_distance as(
select max(lat_n) as c, max(long_w) as d from station) 

select round((c-a)+(d-b),4) as distance
from max_distance m, min_distance mi;

