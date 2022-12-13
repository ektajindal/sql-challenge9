--List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name (4 points)

SELECT 
employees.emp_no, 
employees.last_name, 
employees.first_name,
departments.dept_name
FROM employees 
LEFT JOIN dept_emp 
ON employees.emp_no=dept_emp.emp_no
INNER JOIN departments 
ON departments.dept_no=dept_emp.dept_no
WHERE departments.dept_name in ('Sales', 'Development')