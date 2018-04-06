--It is used to combine all rows of one table with all rows of another table.
SELECT shirts.shirt_color,
       pants.pant_color
FROM shirts
CROSS JOIN pants;

--start by counting the number of customers who were subscribed to the newspaper during March (3)
SELECT COUNT(*)
FROM newspaper
WHERE end_month > 3
AND start_month < 3;

--Select all columns from the cross join of newspaper and months.
SELECT *
FROM newspaper
CROSS JOIN months;

--Create a third query where you add a where statement to your cross join.
--The column month should be greater than start_month, but less than end_month.
--This will select all months where a user was subscribed.
SELECT *
FROM newspaper
CROSS JOIN months
WHERE month > start_month
AND month < end_month;

--Create a final query where you aggregate over each month.
SELECT month, COUNT(*) as subscribers
FROM newspaper
CROSS JOIN months
WHERE month > start_month
AND month < end_month
GROUP BY month;
