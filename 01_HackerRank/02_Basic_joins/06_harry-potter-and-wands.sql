-- Problem: Query minimal coins needed for each wand power.
-- Source: https://www.hackerrank.com/challenges/harry-potter-and-wands/problem?isFullScreen=false
-- Difficulty: Medium
-- 📝 Explanation:
-- Join WANDS with WANDS_PROPERTY on code.
-- Use a subquery to get minimum coins_needed per power and age, then filter and sort.


SELECT w.id, wp.age, w.coins_needed, w.power
FROM wands w
JOIN wands_property wp
    ON w.code = wp.code
WHERE wp.is_evil = 0
  AND NOT EXISTS (
        SELECT 1
        FROM wands w2
        JOIN wands_property wp2
            ON w2.code = wp2.code
        WHERE wp2.is_evil = 0
          AND w2.power = w.power
          AND wp2.age = wp.age
          AND w2.coins_needed < w.coins_needed
    )
ORDER BY w.power DESC, wp.age DESC;

