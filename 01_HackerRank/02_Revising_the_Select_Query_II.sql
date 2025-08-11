-- Problem : Query the NAME field for all American cities in the CITY table with populations larger than 120000. The CountryCode for America is USA.
-- Source: http://hackerrank.com/challenges/revising-the-select-query-2/problem?isFullScreen=false
-- Difficulty: Easy

-- 📝 Explanation:
-- Select Name column from CITY table where COUNTRYCODE is 'USA'
-- and population is greater than 120000. This filters only the name of large American cities.


select name from city 
where countrycode = 'USA' 
and population>120000;
