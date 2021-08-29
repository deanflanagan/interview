SELECT employees.name, 
	departments.department,  
	date_part('year', CURRENT_DATE) - EXTRACT(YEAR FROM employees.date_joined_company) as years_at_company,
	employees.date_joined_company
FROM employees, departments
WHERE employees.department_id = departments.id
AND EXTRACT(MONTH FROM employees.date_joined_company) = 7;