-- Problem : Query the list of CITY names from STATION that start with vowels. Your result cannot contain duplicates.
-- Source: https://www.hackerrank.com/challenges/weather-observation-station-6/problem?isFullScreen=false
-- Difficulty: Easy

-- 📝 Explanation:
-- Select distinct city names from the station table.
-- Apply a filter to include only cities where the first letter is a vowel (A, E, I, O, U).
-- Use REGEXP '^[aeiouAEIOU]' for case-insensitive matching.
SELECT DISTINCT city
FROM station
WHERE city REGEXP '^[aeiouAEIOU]';
