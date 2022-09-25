--List the employee number, last name, first name, sex, and salary
SELECT employees.emp_no, employees.last_name, employees.first_name, employees.sex, salaries.salary
FROM employees
LEFT JOIN salaries AS salaries ON
employees.emp_no=salaries.emp_no;

--List first name, last name, and hire date for employees who were hired in 1986
SELECT first_name, last_name, hire_date
FROM employees 
WHERE hire_date BETWEEN '1986-1-1' AND '1986-12-31'
ORDER BY hire_date ASC;


--List the manager of each department with the following information: department number,
--department name, manager's employee number, last name, and first name.
SELECT departments.dept_no, departments.dept_name, dept_manager.emp_no, employees.last_name, employees.first_name
FROM employees
INNER JOIN dept_manager AS dept_manager on dept_manager.emp_no=employees.emp_no
INNER JOIN departments AS departments on departments.dept_no=dept_manager.dept_no
ORDER BY dept_no ASC;


--List the department number of each employee, employee number, last name, first name, and department name
SELECT employees.emp_no, employees.last_name, employees.first_name, departments.dept_name
FROM employees
LEFT JOIN dept_employee AS dept_employee ON employees.emp_no=dept_employee.emp_no
LEFT JOIN departments AS departments ON departments.dept_no=dept_employee.dept_no
ORDER BY last_name ASC;

--List first name, last name, and sex for employees whose first name is
--"Hercules" and last names begin with "B"
SELECT first_name, last_name, sex
FROM employees 
WHERE first_name = 'Hercules' AND last_name LIKE 'B%'
ORDER BY last_name ASC;

--List each employee in the Sales department, including their 
--employee number, last name, first name
SELECT employees.emp_no, employees.last_name, employees.first_name, departments.dept_name
FROM employees
LEFT JOIN dept_employee AS dept_employee ON employees.emp_no=dept_employee.emp_no
LEFT JOIN departments AS departments on departments.dept_no=dept_employee.dept_no
WHERE departments.dept_name = 'Sales';


--List all employees in the Sales and Development departments, including their 
--employee number, last name, first name, and department name
SELECT employees.emp_no, employees.last_name, employees.first_name, departments.dept_name
FROM employees
LEFT JOIN dept_employee AS dept_employee ON employees.emp_no=dept_employee.emp_no
LEFT JOIN departments AS departments ON departments.dept_no=dept_employee.dept_no
WHERE departments.dept_name = 'Sales' OR departments.dept_name = 'Development';


--List the frequency count of employee last names in descending order
--(i.e., how many employees share each last name)
SELECT last_name, COUNT(*) AS "Last NAME COUNT"
FROM employees
GROUP BY last_name
ORDER BY "Last NAME COUNT" DESC;