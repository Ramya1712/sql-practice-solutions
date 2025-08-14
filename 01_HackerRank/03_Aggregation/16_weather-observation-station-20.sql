-- Problem: Weather Observation Station 20
-- Source: https://www.hackerrank.com/challenges/weather-observation-station-20/problem?isFullScreen=false
-- Difficulty: Medium

-- 📝 Explanation:
-- Compute the median of LAT_N values in STATION and round the result to 4 decimal places.

SELECT ROUND((

  (SELECT MIN(s1.LAT_N)
   FROM STATION s1
   WHERE (SELECT COUNT(*) FROM STATION s2 WHERE s2.LAT_N <= s1.LAT_N)
         >= FLOOR(((SELECT COUNT(*) FROM STATION) + 1) / 2)
  )
  +
  (SELECT MIN(s1.LAT_N)
   FROM STATION s1
   WHERE (SELECT COUNT(*) FROM STATION s2 WHERE s2.LAT_N <= s1.LAT_N)
         >= FLOOR(((SELECT COUNT(*) FROM STATION) + 2) / 2)
  )
)/2, 4) AS median;
