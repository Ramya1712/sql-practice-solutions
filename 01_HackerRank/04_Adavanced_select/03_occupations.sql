-- Problem: Pivot the OCCUPATIONS table so that each Name appears under its corresponding Occupation column
--          (Doctor, Professor, Singer, Actor) in that order. Names should be sorted alphabetically within each occupation.
--          Print NULL where there are no more names for a given occupation.
-- Source: https://www.hackerrank.com/challenges/occupations/problem?isFullScreen=false
-- Difficulty: Medium

-- 📝 Explanation:
-- Use CASE expressions to assign each Name to the right occupation column.
-- Use ROW_NUMBER() with PARTITION BY Occupation to index each name within its occupation group alphabetically.
-- Join the results by row index to align them in columns.
-- This creates four columns in the specified order, with NULLs where applicable.

SELECT 
    MAX(CASE WHEN Occupation = 'Doctor' THEN Name END) AS Doctor,
    MAX(CASE WHEN Occupation = 'Professor' THEN Name END) AS Professor,
    MAX(CASE WHEN Occupation = 'Singer' THEN Name END) AS Singer,
    MAX(CASE WHEN Occupation = 'Actor' THEN Name END) AS Actor
FROM (
    SELECT Name, Occupation,
           ROW_NUMBER() OVER (PARTITION BY Occupation ORDER BY Name) AS row_num
    FROM occupations
) t
GROUP BY row_num;
