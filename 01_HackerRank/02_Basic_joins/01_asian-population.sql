-- Problem: Calculate the average city population per continent.
-- Source: https://www.hackerrank.com/challenges/basic-join-asian-population
-- Difficulty: Easy
-- 📝 Explanation:
-- Join the CITY and COUNTRY tables on CountryCode=Code.
-- Group by continent and compute the rounded-down average of city populations.

select sum(cy.population) as total_count 
from country c join city cy on c.code = cy.countrycode 
where c.continent='Asia'
