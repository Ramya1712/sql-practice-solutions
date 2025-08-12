-- Problem : Query the two cities in STATION with the shortest and longest CITY names, as well as their respective lengths (i.e.: number of characters in the name). If there is more than one smallest or largest city, choose the one that comes first when ordered alphabetically.
--Note: You can write two separate queries to get the desired output. It need not be a single query.
-- Source: https://www.hackerrank.com/challenges/weather-observation-station-5/problem
-- Difficulty: Easy

-- 📝 Explanation:
--Find the shortest and longest city names in station by character length.
--If multiple cities share the same length, choose the one that comes first alphabetically.
--Use ORDER BY LENGTH(city), city ASC for shortest and ORDER BY LENGTH(city) DESC, city ASC for longest.
--Combine results using UNION.

SELECT city, LENGTH(city) AS name_length
FROM station
WHERE LENGTH(city) = (
    SELECT MIN(LENGTH(city))
    FROM station
)
ORDER BY city
LIMIT 1;

SELECT city, LENGTH(city) AS name_length
FROM station
WHERE LENGTH(city) = (
    SELECT MAX(LENGTH(city))
    FROM station
)
ORDER BY city
LIMIT 1;
