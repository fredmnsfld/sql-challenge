-- Create schemas
-- Create tables
CREATE TABLE IF NOT EXISTS departments
(
    dept_no CHARACTER (30) NOT NULL,
    dept_name CHARACTER(255),
    PRIMARY KEY(dept_no)
);

--DROP TABLE departments;
--SELECT * FROM departments;

CREATE TABLE IF NOT EXISTS dept_empl
(
	emp_no CHARACTER (55) NOT NULL,
	dept_no CHARACTER (30) NOT NULL,
	PRIMARY KEY (emp_no, dept_no),
	FOREIGN KEY (dept_no) REFERENCES departments (dept_no),
	FOREIGN KEY (emp_no) REFERENCES employees (emp_no)
);

--DROP TABLE dept_empl;
--SELECT * FROM dept_empl;

CREATE TABLE IF NOT EXISTS employees
(
    emp_no CHARACTER (55) NOT NULL,
    emp_title_id CHARACTER (30),
    birth_date DATE,
    first_name CHARACTER(30),
    last_name CHARACTER(30),
    sex CHARACTER(30),
    hire_date DATE,
    PRIMARY KEY(emp_no),
	FOREIGN KEY (emp_title_id) REFERENCES titles (title_id)
);

--DROP TABLE employees;
--SELECT * FROM employees;

CREATE TABLE IF NOT EXISTS salaries
(
    emp_no CHARACTER (55) NOT NULL,
    salary INTEGER,
	PRIMARY KEY (emp_no),
	FOREIGN KEY (emp_no) REFERENCES employees (emp_no)
);

--DROP TABLE salaries;
--SELECT * FROM salaries;

CREATE TABLE IF NOT EXISTS department_managers
(
    dept_no CHARACTER (30) NOT NULL,
    emp_no CHARACTER (55) NOT NULL,
	PRIMARY KEY (dept_no, emp_no),
	FOREIGN KEY (dept_no) REFERENCES departments (dept_no),
	FOREIGN KEY (emp_no) REFERENCES employees (emp_no)
);

--DROP TABLE department_managers;
--SELECT * FROM department_managers;

CREATE TABLE IF NOT EXISTS titles
(
    title_id CHARACTER(30) NOT NULL,
    title CHARACTER(255),
    PRIMARY KEY(title_id)
);

--DROP TABLE titles;
--SELECT * FROM titles;

-- Create FKs
-- Create Indexes
-- database querries

