--Examine the data
SELECT * FROM trips;

SELECT * FROM riders;

SELECT * FROM cars;

SELECT *
FROM riders
CROSS JOIN cars;

--Create a Trip Log
--Join Trips and riders
SELECT *
FROM trips
LEFT JOIN riders
ON trips.rider_id = riders.id;

--Join Trips and Cars
SELECT *
FROM trips
JOIN cars
ON trips.car_id = cars.id;

--Stack the riders table on top of the new table named riders2.
SELECT *
FROM riders
UNION
SELECT *
FROM riders2;

--What is the average cost for a trip?
SELECT AVG(cost)
FROM trips;

--Find all the riders who have used REBU less than 500 times!
SELECT *
FROM riders
WHERE total_trips < 500;

--Calculate the number of cars that are active.
SELECT COUNT(*)
FROM cars
WHERE status = 'active';

--Write a query that finds the two cars that have the highest trips_completed.
SELECT *
FROM cars
ORDER BY trips_completed DESC
LIMIT 2;
