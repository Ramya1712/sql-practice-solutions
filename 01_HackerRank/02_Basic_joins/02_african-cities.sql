-- Problem: List city names in Africa along with their country codes.
-- Source: https://www.hackerrank.com/challenges/basic-join-african-cities
-- Difficulty: Easy
-- 📝 Explanation:
-- Join CITY and COUNTRY where Continent='Africa'.
-- Select city name and country code directly from joined result.

select cy.name 
from country c join city cy on c.code = cy.countrycode 
where c.continent='africa'
