-- Problem: Query all columns for all American cities in the CITY table with populations larger than 100000. The CountryCode for America is USA.
-- Source: https://www.hackerrank.com/challenges/revising-the-select-query/problem?isFullScreen=true
-- Difficulty: Easy


-- 📝 Explanation:
-- Select all columns from CITY table where COUNTRYCODE is 'USA'
-- and population is greater than 100000. This filters only large American cities.


select * from city 
where countrycode = 'USA' 
and population>100000;
