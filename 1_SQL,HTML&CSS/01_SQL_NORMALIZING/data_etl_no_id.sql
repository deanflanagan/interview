CREATE TABLE beautemp (
"Name" VARCHAR(80),
"email" VARCHAR(80),
"Department" VARCHAR(80),
"Birthday" VARCHAR(10) NULL,
"Food Restrictions" VARCHAR(80) ,
"Base" VARCHAR(80),
"Date Joined Company" DATE
);



-- this takes care of the nulls
\copy beautemp FROM 'C:/Users/Dean/Desktop/beauceron/Worksheet in JuniorDev - Technical Test.csv' WITH NULL as 'NULL' CSV HEADER;

UPDATE beautemp SET "Birthday"=NULL where "Birthday"='';
UPDATE beautemp SET "Department"=NULL where "Department"='';

ALTER TABLE beautemp ALTER COLUMN "Birthday" TYPE DATE 
using to_date("Birthday", 'YYYY-MM-DD');

ALTER TABLE beautemp 
RENAME COLUMN "Name" TO name;

ALTER TABLE beautemp 
RENAME COLUMN "Department" TO department;

ALTER TABLE beautemp 
RENAME COLUMN "Birthday" TO birthday;

ALTER TABLE beautemp 
RENAME COLUMN "Food Restrictions" TO food_restrictions;

ALTER TABLE beautemp 
RENAME COLUMN "Base" TO base;

ALTER TABLE beautemp 
RENAME COLUMN "Date Joined Company" TO date_joined_company;

SELECT * FROM beautemp;
