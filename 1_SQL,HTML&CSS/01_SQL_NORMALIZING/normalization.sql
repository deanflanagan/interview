CREATE TABLE employees (
id SERIAL PRIMARY KEY,
	name VARCHAR(80) NOT NULL,
email VARCHAR(80) NOT NULL,
birthday DATE,
date_joined_company DATE NOT NULL,
department_id INT,
food_restrictions_id INT, 	
base_id INT NOT NULL, 
	FOREIGN KEY (department_id)
           REFERENCES departments,
		FOREIGN KEY  (base_id)
           REFERENCES bases,
			FOREIGN KEY  (food_restrictions_id)
           REFERENCES food_restrictions
);

INSERT INTO employees(name, email, birthday, date_joined_company, department_id, food_restrictions_id, base_id) 
VALUES 
	('Billie Jean', 'billie.jean@universal.com', '1970-06-30', '2019-07-18', 1,2,1),
		('Florentine Pogen', 'florentine.pogen@universal.com', '1978-06-03', '2015-07-18', 1,2,1),
		('Mary Banilow', 'mary.banilow@universal.com', '1978-06-03', '2015-07-18', 2,1,1),
	('Arthur Russell', 'arthur.russell@universal.com', '1962-07-03', '2012-06-09', 3,1,2),
	('Billie Holiday', 'billie.holiday@universal.com', '1931-07-29', '2020-07-11', 2,3,3)
;


CREATE TABLE departments (
id SERIAL PRIMARY KEY,
	department VARCHAR(30) );

CREATE TABLE bases (
id SERIAL PRIMARY KEY,
base VARCHAR(30) NOT NULL);

CREATE TABLE food_restrictions (
id SERIAL PRIMARY KEY,
	restrictions VARCHAR(30)
);

INSERT INTO bases(base)
VALUES ('Fredericton'),
('Ontario'),
('Remote');

INSERT INTO departments(department)
VALUES ('Sales'),( 'IT'), ('Customer Care'),('Technical Support'), ('Accounting' );

INSERT INTO food_restrictions(restrictions)
VALUES ('Vegan'),('Vegetarian'),('Nut Free'),('Lactose Intolerant');


-- DROP TABLE employees;
-- DROP TABLE bases;
-- DROP TABLE departments;
-- DROP TABLE food_restrictions;