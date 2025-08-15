-- Problem: Write a query identifying the type of each record in the TRIANGLES table using its three side lengths. Output one of the following statements for each record in the table:
-- Source: https://www.hackerrank.com/challenges/what-type-of-triangle/problem?isFullScreen=false
-- Difficulty: Easy

-- 📝 Explanation:
-- Compute the types of triangle using the case statement.

SELECT
    CASE
        WHEN (A + B <= C) OR (A + C <= B) OR (B + C <= A) THEN 'Not A Triangle'
        WHEN (A = B AND B = C) THEN 'Equilateral'
        WHEN (A = B OR A = C OR B = C) THEN 'Isosceles'
        ELSE 'Scalene'
    END AS TriangleType
FROM
    TRIANGLES;
