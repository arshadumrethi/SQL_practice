SELECT * FROM startups;

SELECT COUNT(name)
FROM startups;

SELECT SUM(valuation)
FROM startups;

SELECT MAX(raised)
FROM startups;

SELECT MAX(raised)
FROM startups
WHERE stage = 'Seed';

SELECT MIN(founded)
FROM startups;

--Return the average valuation, in each category
SELECT category, AVG(valuation)
FROM startups
GROUP BY category;

--Return the average valuation, in each category.Round the averages to two decimal places.
--Lastly, order the list from highest averages to lowest.
SELECT category, ROUND(AVG(valuation), 2)
FROM startups
GROUP BY category
ORDER BY 2 DESC;

--Return the name of each category with the total number of companies that belong to it.
SELECT category, COUNT(*)
FROM startups
GROUP BY category;

--Filter the result only include categories with more than three companies.
--What are the three most competitive markets?
SELECT category, COUNT(*)
FROM startups
GROUP BY category
HAVING COUNT(*) > 3;

--What is the average size of a startup in each location?
SELECT location, AVG(employees)
FROM startups
GROUP BY location;

--What is the average size of a startup in each location, with sizes above 500?
SELECT location, AVG(employees)
FROM startups
GROUP BY location
HAVING AVG(employees) > 500;
