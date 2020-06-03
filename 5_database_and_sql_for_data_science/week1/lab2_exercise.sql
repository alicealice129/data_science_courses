DROP table INSTRUCTOR;

--1. Create table INSTRUCTOR
-- ins_id is of type INTEGER, 
--country of type CHAR(2), and rest of the fields VARCHAR
CREATE TABLE INSTRUCTOR
	(ins_id INTEGER PRIMARY KEY NOT NULL,
	lastname VARCHAR(15) NOT NULL, 
	firstname VARCHAR(15) NOT NULL,
	city VARCHAR(15),
	country CHAR(2)
);

-- ins_id be the primary key, and ensure the lastname and firstname are not null.

-- 2A: Insert one row into the INSTRUCTOR table for the the 
-- instructor Rav Ahuja.
--(Hint: values for the character fields 
-- require a singe quotation mark (') before and after each value)

INSERT INTO INSTRUCTOR
(ins_id, lastname, firstname, city, country)
VALUES
(1, 'Ahuja', 'Rav', 'Toronto', 'CA');

-- Task 2B: Insert two rows at once in the INSTRUCTOR
--  table for instructors Raul Chong and Hima Vasudevan.
-- (Hint: list the values for the second row after the first row)
INSERT INTO INSTRUCTOR
(ins_id, lastname, firstname, city, country)
VALUES
(2, 'Chong', 'Raul', 'Toronto', 'CA'),
(3, 'Vasudevan', 'Hima', 'Chicago', 'US')
;

-- Task 3: Select all rows from the INSTRUCTOR table.
SELECT * from INSTRUCTOR;

-- Task 3B: Select the firstname, lastname and country 
-- where the city is Toronto
SELECT firstname, lastname, country
	from INSTRUCTOR 
	where city = 'Toronto';

-- Task 4: Update the row for Rav Ahuja and change his city to Markham.
UPDATE INSTRUCTOR
	SET city = 'Markham'
	where ins_id = 1;

-- Task 5: Delete the row for Raul Chong from the table.
DELETE FROM INSTRUCTOR
	WHERE ins_id = 2;
	
-- Task 5B: Retrieve all rows in the INSTRUCTOR table 
SELECT * FROM INSTRUCTOR;