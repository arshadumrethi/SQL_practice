--GROUP BY Function
--GROUP BY statement comes after WHERE but before ORDER BY or LIMIT

SELECT price, COUNT(*)
FROM fake_apps
GROUP BY price;

--Total number of apps that has been
--downloaded more than 20,000 times, at each price.
SELECT price, COUNT(*)
FROM fake_apps
WHERE downloads > 20000
GROUP BY price;

--Write a new query that calculates the total number of downloads for each category.
SELECT category, SUM(downloads)
FROM fake_apps
GROUP BY category;

--Numbers can be used to select the columns to group by.
SELECT category, price, AVG(downloads)
FROM fake_apps
GROUP BY 1, 2;

--When we want to limit the results of a
--query based on values of the individual rows, use WHERE
--When we want to limit the results of a query
--based on an aggregate property, use HAVING.
SELECT year,
   genre,
   COUNT(name)
FROM movies
GROUP BY 1, 2
HAVING COUNT(name) > 10

--HAVING statement always comes after GROUP BY, but before ORDER BY and LIMIT.
--Add a HAVING clause to restrict the query to prices where
--the total number of apps at that price point is greater than 9.
SELECT price,
   ROUND(AVG(downloads))
FROM fake_apps
GROUP BY price
HAVING COUNT(*) > 9;
