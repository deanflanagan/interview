SELECT department, count(department) number_employees
FROM employees
LEFT JOIN departments
ON departments.id = employees.department_id
LEFT JOIN bases 
ON bases.id = employees.base_id
WHERE base = 'Fredericton'
GROUP BY department
ORDER BY number_employees DESC;