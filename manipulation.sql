--Syntax used to create a table and set the field characteristics
CREATE TABLE celebs (
id INTEGER,
name TEXT,
age INTEGER
);

--Syntax used to add Values to the table by specified field/column
INSERT INTO celebs (id, name, age)
VALUES (1, 'Justin Bieber', 21);

SELECT * FROM celebs;

INSERT INTO celebs (id, name, age)
VALUES (2, 'Beyonce Knowles', 33);

INSERT INTO celebs (id, name, age)
VALUES (3, 'Jeremy Lin', 26);

INSERT INTO celebs (id, name, age)
VALUES (4, 'Taylor Swift', 26);

--Syntax used to change or edit values in the table
UPDATE celebs
SET age = 22
WHERE id = 1;

SELECT * FROM celebs;

--Syntax used to add columns to the table and set its characteristic
ALTER TABLE celebs ADD COLUMN
twitter_handle TEXT;

--Adding value to new column created
UPDATE celebs
SET twitter_handle = '@taylorswift13'
WHERE id = 4;

--Deleting values that dont meet certain condition
DELETE FROM celebs WHERE twitter_handle
IS NULL;

--Creating a new table with preset conditions
CREATE TABLE awards (
   id INTEGER PRIMARY KEY,
   recipient TEXT NOT NULL,
   award_name TEXT DEFAULT "Grammy"
);
