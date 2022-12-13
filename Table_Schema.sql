-- Creating table Schema

--Create table departments

--DROP TABLE departments

CREATE TABLE departments (
  dept_no VARCHAR(10) PRIMARY KEY NOT NULL,
  dept_name VARCHAR(30) NOT NULL
  );
  
 select * from departments
 
 
 -- Create table employees

--DROP TABLE employees

CREATE TABLE employees (
	emp_no INT PRIMARY KEY NOT NULL,
	emp_title_id VARCHAR(5) NOT NULL,
	birth_date DATE NOT NULL,
	first_name VARCHAR(20) NOT NULL,
	last_name VARCHAR(20) NOT NULL,
	sex VARCHAR(2) NOT NULL,
	hire_date DATE NOT NULL
	);

select * from employees

--Create table dept_emp

--DROP TABLE dept_emp

CREATE TABLE dept_emp (
	emp_no INT NOT NULL,
	dept_no VARCHAR(10) NOT NULL REFERENCES departments(dept_no),
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
    PRIMARY KEY(emp_no, dept_no)
);

select * from dept_emp

-- Create table dept_managers

DROP TABLE dept_managers

CREATE TABLE dept_managers (
 dept_no VARCHAR (10) NOT NULL REFERENCES departments(dept_no),
 emp_no INT NOT NULL,
 FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
 PRIMARY KEY(emp_no, dept_no)
);

select * from dept_managers

--Create table salaries
DROP TABLE salaries

CREATE TABLE salaries (
	emp_no INT PRIMARY KEY NOT NULL,
	salary INT NOT NULL,
	FOREIGN KEY(emp_no) REFERENCES employees(emp_no)
);

select * from salaries

--Creating titles table

DROP TABLE titles

CREATE TABLE titles (
	title_id VARCHAR(10),
	title VARCHAR(20) NOT NULL
	
);

select * from titles