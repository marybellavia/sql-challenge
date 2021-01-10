-- List the following details of each employee:
-- employee number, last name, first name, sex, and salary.
SELECT employees.emp_no, employees.last_name, employees.first_name, employees.sex, salaries.salary
FROM employees, salaries
WHERE salaries.emp_no = employees.emp_no;

-- List first name, last name, and hire date
-- for employees who were hired in 1986.
SELECT first_name, last_name, hire_date FROM employees
WHERE hire_date LIKE '%1986' ;

-- List the manager of each department with the following information:
-- department number, department name, the manager's employee number,
-- last name, first name.
SELECT departments.dept_no, departments.dept_name, employees.emp_no , employees.last_name, employees.first_name
FROM departments, employees, dept_manager
WHERE departments.dept_no = dept_manager.dept_no and employees.emp_no = dept_manager.emp_no;

-- List the department of each employee with the following information:
-- employee number, last name, first name, and department name.
SELECT employees.emp_no, employees.last_name, employees.first_name, departments.dept_name
FROM departments, employees, dept_emp
WHERE departments.dept_no = dept_emp.dept_no and employees.emp_no = dept_emp.emp_no;

-- List first name, last name, and sex for employees whose first name
-- is "Hercules" and last names begin with "B."
SELECT first_name, last_name, sex
FROM employees
WHERE first_name = 'Hercules' AND last_name LIKE 'B%';

-- List all employees in the Sales department, including their
-- employee number, last name, first name, and department name.
SELECT employees.emp_no, employees.last_name, employees.first_name, departments.dept_name
FROM departments, employees, dept_emp
WHERE departments.dept_no = dept_emp.dept_no AND employees.emp_no = dept_emp.emp_no
AND departments.dept_name = 'Sales';

-- List all employees in the Sales and Development departments,
-- including their employee number, last name, first name, and
-- department name.

-- In descending order, list the frequency count of employee last names,
--i.e., how many employees share each last name.