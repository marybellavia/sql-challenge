SELECT employees.emp_no, employees.last_name, employees.first_name, employees.sex, salaries.salary
FROM employees, salaries
WHERE salaries.emp_no = employees.emp_no;