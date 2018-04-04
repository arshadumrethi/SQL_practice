Select COUNT(id)
from newspaper;

Select COUNT(id)
from online;

--Join newspaper and online on id (the unique ID of the subscriber). How many rows are in this table?
SELECT COUNT(*)
FROM newspaper
JOIN online
ON newspaper.id = online.id;

--Simple Join is the same as performing an INNER JOIN
--In an INNER JOIN the corresponding rows that the columns are added ON must be present
--No null values are allowed
--Null values or values that dont match in both columns are elimintaed from the result.


--LEFT JOIN will allow us to keep all rows from the first table
--regardless of whether there is a matching row in the second table.
--In the case where certain rows do not match, the resulting column will
--contain the value from the first column.

--Start by performing a left join of newspaper and online and selecting all columns.
SELECT *
FROM newspaper
LEFT JOIN online
ON newspaper.id = online.id;

--In order to find which users do not subscribe to the online edition, we need to add a WHERE clause.
SELECT *
FROM newspaper
LEFT JOIN online
ON newspaper.id = online.id
WHERE online.id IS NULL;

--When the primary key for one table appears in a different table, it is called a foreign key.
--The most common types of joins will be joining a foreign key from one table with the primary key from another table.

SELECT *
FROM classes
JOIN students
ON classes.id = students.class_id;
--class_id corresponds to the primary key id in classes but is the foreign key in students.
