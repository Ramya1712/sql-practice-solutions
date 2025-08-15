-- Problem: Generate two result sets from the OCCUPATIONS table:
-- 1. An alphabetically ordered list of all names, followed by the first letter of each occupation in parentheses.
-- 2. The number of occurrences of each occupation in the format: 
--    "There are a total of [count] [occupation]s."
-- Source: https://www.hackerrank.com/challenges/occupations/problem?isFullScreen=false
-- Difficulty: Medium

-- 📝 Explanation:
-- For the first query, concatenate the Name with the first letter of Occupation in parentheses and sort alphabetically by Name.
-- For the second query, group by Occupation, count the entries, convert the occupation to lowercase, and format the output as specified.
-- Order the second query results by count (ascending) and then alphabetically by occupation.

--Query 1:

select CONCAT(Name , '(' , LEFT(Occupation,1), ')')
from occupations
order by name;

--Query 2:

select CONCAT('There are a total of ', count(*),' ', lower(Occupation),'s.')
from occupations
group by occupation
order by count(*) asc, occupation asc;
