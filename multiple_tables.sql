SELECT *
FROM orders;

SELECT *
FROM subscriptions;

SELECT *
FROM customers;

--Combining Tables
--Combine orders and customers on customer_id
SELECT *
FROM orders
JOIN customers
    ON orders.customer_id = customers.customer_id

--The syntax is always table1.column_name = table2.column_name

--Join orders and subscriptions and select all columns. Make sure to join on subscription_id.
SELECT *
FROM orders
JOIN subscriptions
		ON orders.subscription_id =
    subscriptions.subscription_id;

--Add a second query after your first one that
--only selects rows from the join where description is equal to 'Fashion Magazine'
SELECT *
FROM orders
JOIN subscriptions
		ON orders.subscription_id =
    subscriptions.subscription_id
WHERE description = 'Fashion Magazine';
