--AS is a keyword in SQL that allows you to rename a column or table using an alias
SELECT name AS 'Movies'
FROM movies;

SELECT imdb_rating AS 'IMDb'
FROM movies;

--When we are examining data in a table, it can be helpful to know what distinct
--values exist in a particular column.
SELECT DISTINCT year
FROM movies;

SELECT DISTINCT genre
FROM movies;

--We can restrict our query results using the WHERE clause
--in order to obtain only the information we want.
SELECT *
FROM movies
WHERE imdb_rating < 5;

SELECT *
FROM movies
WHERE year > 2014;

--LIKE can be a useful operator when you want to compare similar values.
--LIKE is a special operator used with the WHERE clause to search for a specific pattern in a column.

SELECT *
FROM movies
WHERE name LIKE 'Se_en'; --The _ is a special character that can be filled with anything in the database.

-- % is a wildcard character that matches zero or more missing letters in the pattern. For example:

-- A% matches all movies with names that begin with letter 'A'
SELECT *
FROM movies
WHERE name LIKE 'A%';
-- %a matches all movies that end with 'a'
SELECT *
FROM movies
WHERE name LIKE '%a';
-- We can also use % both before and after a pattern:
SELECT *
FROM movies
WHERE name LIKE '%man%';
-- Here, any movie that contains the word 'man' in its name will be returned in the result.
-- LIKE is not case sensitive. 'Batman' and 'Man of Steel' will both appear in the result of the query above

-- IS NULL / IS NOT NULL used for NULL VALUES
SELECT name
FROM movies
WHERE imdb_rating IS NULL;

-- The BETWEEN operator can be used in
-- a WHERE clause to filter the result set within a certain range.
-- The values can be numbers, text or dates.
SELECT *
FROM movies
WHERE name BETWEEN 'A' AND 'J';
-- This statement filters the result set to only include movies
-- with names that begin with letters 'A' up to, but not including 'J'

SELECT *
FROM movies
WHERE year BETWEEN 1990 AND 1999;
-- In this statement, the BETWEEN operator is being used to filter the result set to only
-- include movies with years between 1990 up to, and including 1999.

SELECT *
FROM movies
WHERE year BETWEEN 1970 AND 1979
   AND imdb_rating > 8;

SELECT *
FROM movies
WHERE year < 1985
  AND genre = 'horror';

SELECT *
FROM movies
WHERE genre = 'romance'
    OR genre = 'comedy';

SELECT *
FROM movies
WHERE year > 2014
   OR genre = 'action';

--We can sort the results using ORDER BY, either alphabetically or numerically.
SELECT name, year, imdb_rating
FROM movies
ORDER BY imdb_rating DESC;

SELECT *
FROM movies
WHERE imdb_rating > 8
ORDER BY year DESC;

--LIMIT lets you cap the number of results
SELECT *
FROM movies
LIMIT 10;

SELECT *
FROM movies
ORDER BY imdb_rating DESC
LIMIT 3;

-- CASE statement allows us to create different outputs (usually in the SELECT statement).
--It is SQL's way of handling if/then logic.
--Each WHEN tests a condition and the following THEN gives us the string if the condition is true.
--The ELSE gives us the string if all the above WHEN clauses evaluate to false.
--A CASE statement must end with END
SELECT name,
 CASE
  WHEN imdb_rating > 7 THEN 'Good'
  WHEN imdb_rating > 5 THEN 'Okay'
  ELSE 'Bad'
 END
FROM movies;
--we can rename the column to 'Rating' by using AS:
SELECT name,
 CASE
  WHEN imdb_rating > 7 THEN 'Good'
  WHEN imdb_rating > 5 THEN 'Okay'
  ELSE 'Bad'
 END AS 'Rating'
FROM movies;

SELECT name,
CASE
WHEN genre = 'romance' THEN 'Fun'
WHEN genre = 'comedy' THEN 'Fun'
ELSE 'Serious'
END AS 'Mood'
FROM movies;
