SELECT COUNT(*) AS 'From Africa'
FROM countries
WHERE continent = 'Africa';

SELECT SUM(population_years.population) AS 'Oceania pop. 2005'
FROM countries
JOIN population_years
ON countries.id = population_years.country_id
WHERE population_years.year = 2005 AND
      countries.continent = 'Oceania'
GROUP BY countries.continent;

SELECT AVG(population_years.population) AS 'South America AVG pop. 2003'
FROM countries
JOIN population_years
ON countries.id = population_years.country_id
WHERE population_years.year = 2003 AND
      countries.continent = 'South America'
GROUP BY countries.continent;

SELECT countries.name AS 'Country', MIN(population_years.population) AS 'Lowest pop. Country 2007'
FROM countries
JOIN population_years
ON countries.id = population_years.country_id
WHERE population_years.year = 2007;

SELECT countries.name AS 'Country', ROUND(AVG(population_years.population),2) AS 'AVG Poland POP. during Covered Timeperiod'
FROM countries
JOIN population_years
ON countries.id = population_years.country_id
WHERE countries.name = 'Poland';

SELECT COUNT(*) AS 'Countries Having The In Name'
FROM countries
WHERE name LIKE '% The%';

SELECT countries.continent AS 'Continent', ROUND(SUM(population_years.population),2) AS 'Pop By Continent-2010'
FROM countries
JOIN population_years
ON countries.id = population_years.country_id
WHERE population_years.year = 2010
GROUP BY countries.continent
ORDER BY 2 DESC ;
