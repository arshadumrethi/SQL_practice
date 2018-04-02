--Max function
SELECT MAX(downloads)
FROM fake_apps;

--Min function
--What is the least number of times an app has been downloaded?
SELECT MIN(downloads)
FROM fake_apps;

--Write a new query that returns the price of the most expensive app.
SELECT MAX(price)
FROM fake_apps;

--Calculate the average number of downloads for all the apps in the table.
SELECT AVG(downloads)
FROM fake_apps;

--Write a new query that calculates the average price for all the apps in the table.
SELECT AVG(price)
FROM fake_apps;

--Let's return the name column and a rounded price column.
SELECT name, ROUND(price, 0)
FROM fake_apps;

--Average price rounded to 2 decimal places.
SELECT ROUND(AVG(price), 2)
FROM fake_apps;
