-- This is the first query:

SELECT DISTINCT year from population_years;

-- Adding additional queries below:
SELECT country, population
  FROM population_years
  WHERE country = 'Gabon'
  ORDER BY population DESC
  LIMIT 1;

SELECT *
  FROM population_years
  WHERE year = 2005
  AND population IS NOT NULL
  ORDER BY population
  LIMIT 10;

SELECT *
FROM population_years
WHERE population > 100 AND
      year = 2010
ORDER BY population DESC;

SELECT DISTINCT country
FROM population_years
WHERE country LIKE '%Islands%';

SELECT *
FROM population_years
WHERE year = 2000 AND
      country = 'Indonesia';


SELECT *
FROM population_years
WHERE year = 2010 AND
      country = 'Indonesia';

