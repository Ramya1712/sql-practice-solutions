-- Problem: Compute average city population per continent, rounded down.
-- Source: https://www.hackerrank.com/challenges/basic-join-average-population
-- Difficulty: Easy
-- 📝 Explanation:
-- Join CITY and COUNTRY tables.
-- Use GROUP BY continent and FLOOR(AVG(population)) for results.

select c.continent, floor(avg(cy.population)) 
from country c join city cy on c.code = cy.countrycode 
group by c.continent

