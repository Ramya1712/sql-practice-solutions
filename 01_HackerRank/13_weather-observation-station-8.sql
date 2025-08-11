-- Problem : Query the list of CITY names from STATION that start and end with vowels. Your result cannot contain duplicates.
-- Source: https://www.hackerrank.com/challenges/weather-observation-station-8/problem?isFullScreen=false
-- Difficulty: Easy

-- 📝 Explanation:
-- Select distinct city names from the station table.
-- Apply a filter to include only cities where the first and last letters are vowels.
-- Use REGEXP '^[aeiouAEIOU].*[aeiouAEIOU]$' for case-insensitive matching.

SELECT DISTINCT city
FROM station
WHERE city REGEXP '^[aeiouAEIOU].*[aeiouAEIOU]$';
