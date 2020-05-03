DROP TABLE departments;
DROP TABLE dept_emp;
DROP TABLE dept_manager;
DROP TABLE employees;
DROP TABLE titles;
DROP TABLE salaries;

CREATE TABLE departments (
	dept_no VARCHAR,
	dept_name VARCHAR
);

CREATE TABLE dept_emp(
	emp_no INT,
	dept_no VARCHAR
);

CREATE TABLE dept_manager(
	dept_no VARCHAR,
	emp_no INT
);

CREATE TABLE employees(
	emp_no INT,
	emp_title_id VARCHAR,
	birth_date DATE,
	first_name VARCHAR,
	last_name VARCHAR,
	sex VARCHAR,
	hire_date DATE
);

CREATE TABLE titles(
	title_id VARCHAR,
	title VARCHAR
);

CREATE TABLE salaries(
	emp_no INT,
	salary INT
);

SELECT * FROM departments;
SELECT * FROM dept_emp;
SELECT * FROM dept_manager;
SELECT * FROM employees;
SELECT * FROM titles;
SELECT * FROM salaries;
