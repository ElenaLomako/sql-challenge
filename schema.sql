--Drop table if exist
--DROP TABLE IF EXISTS departments;
--DROP TABLE IF EXISTS dept_emp;
--DROP TABLE IF EXISTS dept_manager;
--DROP TABLE IF EXISTS employees;
--DROP TABLE IF EXISTS salaries;
--DROP TABLE IF EXISTS titles;

-- Create new table
CREATE TABLE departments(
	dept_no VARCHAR (5) NOT NULL PRIMARY KEY, 
	dept_name VARCHAR (25) NOT NULL
);

SELECT * FROM departments;

-- import the departments table 

-- Create new table
CREATE TABLE titles(
	title_id VARCHAR (5) NOT NULL PRIMARY KEY, 
	title VARCHAR (25) NOT NULL
);

SELECT * FROM titles;

--Import the titles table

-- Create new table
CREATE TABLE employees(
	emp_no INT NOT NULL PRIMARY KEY, 
	emp_title_id VARCHAR (5) NOT NULL,
	birth_date DATE NOT NULL,
	first_name VARCHAR NOT NULL,
	last_name VARCHAR NOT NULL,
	sex VARCHAR (1) NOT NULL,
	hire_date DATE NOT NULL,
	FOREIGN KEY (emp_title_id) REFERENCES titles(title_id)
);

SELECT * FROM employees;

--Import the employees table

-- Create new table
CREATE TABLE dept_emp(
	emp_no INT NOT NULL PRIMARY KEY, 
	dept_no VARCHAR (5) NOT NULL PRIMARY KEY,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);

SELECT * FROM dept_emp;

--Import the dept_emp table

-- Create new table
CREATE TABLE dept_manager(
	dept_no VARCHAR (5) NOT NULL PRIMARY KEY, 
	emp_no INT NOT NULL PRIMARY KEY,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);

SELECT * FROM dept_manager;

--Import the dept_manager table

-- Create new table
CREATE TABLE salaries(
	emp_no INT NOT NULL PRIMARY KEY, 
	salary INT NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

SELECT * FROM salaries;

--Import salaries table

