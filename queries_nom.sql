SELECT * from nomnom;

--What are the distinct neighborhoods?
SELECT DISTINCT neighborhood
from nomnom;

--What are the distinct cuisine types?
SELECT DISTINCT cuisine
from nomnom;

--Suppose we would like some Chinese takeout. What are our options?
SELECT *
from nomnom
WHERE cuisine = 'Chinese';

--Your coworker Trey can't remember the exact
--name of a restaurant he went to but he
--knows it contains the word 'meatball' in it.
SELECT *
from nomnom
WHERE name LIKE '%meatball%';

--Find all the close by spots in Midtown, Downtown or Chinatown.
SELECT *
from nomnom
WHERE neighborhood = 'Midtown'
	OR neighborhood = 'Downtown'
  OR neighborhood = 'Chinatown';

--Find all the health grade pending restaurants (empty values).
SELECT *
from nomnom
WHERE health IS NULL;

--Create a Top 10 Restaurants Ranking based on reviews.
SELECT name, review, cuisine, price
from nomnom
ORDER BY review DESC
LIMIT 10;
