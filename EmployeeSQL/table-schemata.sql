-- Create table of Employee information
CREATE TABLE Employees (
	emp_no INTEGER PRIMARY KEY,
	emp_title VARCHAR(10) NOT NULL,
	birth_date DATE,
	first_name VARCHAR(50) NOT NULL,
	last_name VARCHAR(50) NOT NULL,
	sex VARCHAR(10) NOT NULL,
	hire_date DATE	
);
-- Create table for Departments
CREATE TABLE Departments (
	dept_no VARCHAR(8) PRIMARY KEY,
	dept_name VARCHAR(30) NOT NULL
);
-- Create table for Dept Number and Employee Number
CREATE TABLE Dept_Employee (
	emp_no INTEGER NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES Employees(emp_no),
	dept_no VARCHAR(8) NOT NULL,
	FOREIGN KEY (dept_no) REFERENCES Departments(dept_no)
);
-- Create table for Department Manager
CREATE TABLE Dept_Manager (
	dept_no VARCHAR(8) NOT NULL,
	FOREIGN KEY (dept_no) REFERENCES Departments(dept_no),
	emp_no INTEGER,
	FOREIGN KEY (emp_no) REFERENCES Employees(emp_no)	
);
-- Create table for Employee Salaries
CREATE TABLE Salaries (
	emp_no INTEGER NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES Employees(emp_no),
	salary INTEGER NOT NULL
);
-- Create table for Job Titles
CREATE TABLE Titles (
	title_id VARCHAR(8) PRIMARY KEY,
	title VARCHAR(30)	
);

