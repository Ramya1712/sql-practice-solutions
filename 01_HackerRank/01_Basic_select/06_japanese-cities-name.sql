-- Problem : Query the names of all the Japanese cities in the CITY table. The COUNTRYCODE for Japan is JPN.
-- Source: https://www.hackerrank.com/challenges/japanese-cities-name/problem?isFullScreen=true
-- Difficulty: Easy

-- 📝 Explanation:
-- Select Name column from CITY table where COUNTRYCODE is 'JPN'

select name from city 
where countrycode= 'JPN';
