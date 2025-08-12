-- Problem : Query the list of CITY names from STATION that either do not start with vowels. Your result cannot contain duplicates.
-- Source: https://www.hackerrank.com/challenges/weather-observation-station-9/problem?isFullScreen=false
-- Difficulty: Easy

-- 📝 Explanation:
-- Select distinct city names from the station table.
-- Apply a filter to exclude cities where the first letter is a vowel (A, E, I, O, U).
-- Use NOT REGEXP '^[aeiouAEIOU]' to perform a case-insensitive match.

SELECT DISTINCT city
FROM station
WHERE city  NOT REGEXP '^[aeiouAEIOU]';
