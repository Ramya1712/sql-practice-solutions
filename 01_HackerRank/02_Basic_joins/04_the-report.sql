-- Problem: Create a grade report showing student name (or NULL), grade, and marks with sorting rules.
-- Source: https://www.hackerrank.com/challenges/the-report
-- Difficulty: Medium
-- 📝 Explanation:
-- Join STUDENTS and GRADES where marks fall between min and max.
-- Use CASE to replace name with NULL for grade < 8, then ORDER accordingly.

select 
case when grade<8 THEN NULL ELSE name END as name,
grade,
marks
from students s join grades g
ON S.Marks BETWEEN g.Min_Mark AND g.Max_Mark
order by grade desc,
CASE 
        WHEN Grade >= 8 THEN Name
        ELSE NULL
    END ASC,
    CASE
        WHEN Grade < 8 THEN Marks
        ELSE NULL
    END ASC