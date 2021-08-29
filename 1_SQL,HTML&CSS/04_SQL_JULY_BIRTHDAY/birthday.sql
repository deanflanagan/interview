SELECT employees.name, 
	departments.department,
	TO_CHAR(employees.birthday :: DATE, 'dd-Mon')
FROM employees, departments
WHERE employees.department_id = departments.id
AND EXTRACT(MONTH FROM employees.birthday) = 7;