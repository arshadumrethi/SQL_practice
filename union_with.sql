--Union can combine two tables having the same column names, making one large table.
SELECT *
FROM table1
UNION
SELECT *
FROM table2;

SELECT *
FROM newspaper
UNION
SELECT *
FROM online;

--With is used to combine a table that we form through some calculation with another table.
SELECT customer_id,
       COUNT(subscription_id) as subscriptions
FROM orders
GROUP BY customer_id;

WITH previous_results AS (
    SELECT ...
)
SELECT *
FROM previous_results
JOIN other_table
  ON ... = ...;

--
WITH previous_query AS (SELECT customer_id,
      COUNT(subscription_id) as subscriptions
FROM orders
GROUP BY customer_id)

SELECT customers.customer_name, previous_query.subscriptions
FROM customers
JOIN previous_query
ON previous_query.customer_id = customers.customer_id;
