-- List the following details of each employee: employee number, last name, first name, sex, and salary.

SELECT employees.emp_no, employees.last_name, employees.first_name, employees.sex, salaries.salary
FROM employees
INNER JOIN salaries ON
salaries.emp_no = employees.emp_no;

-- List first name, last name, and hire date for employees who were hired in 1986.

SELECT employees.last_name, employees.first_name, employees.hire_date
FROM employees
WHERE hire_date BETWEEN '01/01/1986' AND '12/31/86';

-- List the manager of each department with the following information: 
-- department number, department name, the manager's employee number, last name, first name.

SELECT departments.dept_no, departments.dept_name, dept_manager.emp_no, employees.last_name, employees.first_name
FROM departments
INNER JOIN dept_manager ON
departments.dept_no = dept_manager.dept_no
INNER JOIN employees ON
dept_manager.emp_no = employees.emp_no;

-- List the department of each employee with the following information: 
-- employee number, last name, first name, and department name.

SELECT employees.emp_no, employees.last_name, employees.first_name, departments.dept_name
FROM employees
INNER JOIN dept_emp ON
employees.emp_no = dept_emp.emp_no
INNER JOIN departments ON
dept_emp.dept_no = departments.dept_no;

-- List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."

SELECT employees.first_name, employees.last_name, employees.sex
FROM employees 
WHERE first_name = 'Hercules' AND last_name LIKE 'B%';

-- List all employees in the Sales department, 
-- including their employee number, last name, first name, and department name.

SELECT employees.emp_no, employees.last_name, employees.first_name, departments.dept_name
FROM employees
INNER JOIN dept_emp ON
employees.emp_no = dept_emp.emp_no
INNER JOIN departments ON
dept_emp.dept_no = departments.dept_no
WHERE departments.dept_name = 'Sales';


-- List all employees in the Sales and Development departments, 
-- including their employee number, last name, first name, and department name.

SELECT employees.emp_no, employees.last_name, employees.first_name, departments.dept_name
FROM employees
INNER JOIN dept_emp ON
employees.emp_no = dept_emp.emp_no
INNER JOIN departments ON
dept_emp.dept_no = departments.dept_no
WHERE departments.dept_name IN ('Sales', 'Development');

-- In descending order, list the frequency count of employee last names, 
-- i.e., how many employees share each last name.

SELECT last_name, COUNT (last_name)
FROM employees
GROUP BY last_name
ORDER BY COUNT DESC;