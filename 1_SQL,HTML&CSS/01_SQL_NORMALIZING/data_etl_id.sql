CREATE TABLE master_table (
    id SERIAL PRIMARY KEY,
"Name" VARCHAR(80),
"email" VARCHAR(80),
"Department" VARCHAR(80),
"Birthday" VARCHAR(10) NULL,
"Food Restrictions" VARCHAR(80) ,
"Base" VARCHAR(80),
"Date Joined Company" DATE
);


-- this takes care of the nulls. I had to do it in psql as no permission on pgadmin
\copy master_table("Name" ,"email" ,"Department" ,"Birthday" ,"Food Restrictions"  ,"Base" ,"Date Joined Company") FROM 'C:/Users/Dean/Desktop/beauceron/Worksheet in JuniorDev - Technical Test.csv' WITH NULL as 'NULL' CSV HEADER;

UPDATE master_table SET "Birthday"=NULL where "Birthday"='';
UPDATE master_table SET "Department"=NULL where "Department"='';

ALTER TABLE master_table ALTER COLUMN "Birthday" TYPE DATE 
using to_date("Birthday", 'YYYY-MM-DD');


