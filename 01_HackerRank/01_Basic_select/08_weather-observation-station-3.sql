-- Problem : Query a list of CITY names from STATION for cities that have an even ID number. Print the results in any order, but exclude duplicates from the answer.
-- Source: https://www.hackerrank.com/challenges/weather-observation-station-3/problem?isFullScreen=false
-- Difficulty: Easy

-- 📝 Explanation:
-- Select a unique city from station table using distinct.
-- add a filter to id column to fetch only the even id's

select distinct city from station
where id%2=0;
