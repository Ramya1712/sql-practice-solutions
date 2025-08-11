-- Problem : Query all attributes of every Japanese city in the CITY table. The COUNTRYCODE for Japan is JPN.
-- Source: https://www.hackerrank.com/challenges/japanese-cities-attributes/problem?isFullScreen=false
-- Difficulty: Easy

-- 📝 Explanation:
-- Select all columns from CITY table where COUNTRYCODE is 'JPN'



select * from city 
where countrycode = 'JPN';
