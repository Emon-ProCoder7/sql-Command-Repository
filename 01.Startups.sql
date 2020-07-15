SELECT COUNT(DISTINCT(name)) AS 'Total No. of Companies'
FROM startups;

SELECT SUM(valuation) AS 'Total Valuation'
FROM startups;

SELECT MAX(raised) AS 'Highest Amount Raised'
FROM startups
WHERE stage = 'Seed';

SELECT MIN(founded) AS 'Oldest Founding Year'
FROM startups;

SELECT AVG(valuation)
FROM startups;





SELECT category, ROUND(AVG(valuation),2) AS 'Mean Valuation'
FROM startups
WHERE category IS NOT NULL
GROUP BY category
ORDER BY ROUND(AVG(valuation),2) DESC ;





SELECT category, COUNT(name) AS 'Companies'
FROM startups
GROUP BY category 
ORDER BY COUNT(name) DESC;

SELECT category, COUNT(name) AS 'Competitive Companies'
FROM startups
GROUP BY category
HAVING  COUNT(name) > 3
ORDER BY COUNT(name) DESC;




SELECT location, ROUND(AVG(employees), 0) AS 'Average Employee Count' 
FROM startups
GROUP BY location
ORDER BY  AVG(employees) DESC;

SELECT location, ROUND(AVG(employees), 0) AS 'Average Employee Count' 
FROM startups
GROUP BY location
HAVING ROUND(AVG(employees), 0) > 500
ORDER BY  AVG(employees) DESC;
