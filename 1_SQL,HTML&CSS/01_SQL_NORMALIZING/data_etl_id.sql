CREATE TABLE beautemp (
    id SERIAL PRIMARY KEY,
"Name" VARCHAR(80),
"email" VARCHAR(80),
"Department" VARCHAR(80),
"Birthday" VARCHAR(10) NULL,
"Food Restrictions" VARCHAR(80) ,
"Base" VARCHAR(80),
"Date Joined Company" DATE
);

-- ("Name" ,"email" ,"Department" ,"Birthday" ,"Food Restrictions"  ,"Base" ,"Date Joined Company")

-- ALTER TABLE beautemp ADD COLUMN id SERIAL PRIMARY KEY;

-- this takes care of the nulls. I had to do it in psql as no permission on pgadmin
\copy beautemp("Name" ,"email" ,"Department" ,"Birthday" ,"Food Restrictions"  ,"Base" ,"Date Joined Company") FROM 'C:/Users/Dean/Desktop/beauceron/Worksheet in JuniorDev - Technical Test.csv' WITH NULL as 'NULL' CSV HEADER;

UPDATE beautemp SET "Birthday"=NULL where "Birthday"='';
UPDATE beautemp SET "Department"=NULL where "Department"='';

ALTER TABLE beautemp ALTER COLUMN "Birthday" TYPE DATE 
using to_date("Birthday", 'YYYY-MM-DD');

SELECT * FROM beautemp;
