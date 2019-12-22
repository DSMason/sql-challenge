
CREATE table departments
(
	dept_no varchar not NULL PRIMARY KEY,
	dept_name VARCHAR
);

CREATE table dept_emp
(
	emp_no INT not NULL,
	dept_no varchar not NULL,	
	from_date DATE,
	to_date DATE
);

CREATE table dept_manager
(
	dept_no VARCHAR not NULL,
		FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
	emp_no INT not NULL,
	from_date DATE,
	to_date DATE
);


CREATE table employees
(
	emp_no INT not NULL,
	birth_date DATE,
	first_name VARCHAR,
	last_name VARCHAR,
	gender VARCHAR,
	hire_date DATE
);

CREATE TABLE salaries
(
	emp_no INT not NULL,
	salary INT,
	from_date DATE not NULL,
	to_date DATE
);

CREATE TABLE titles
(
	emp_no INT not NULL,
	title VARCHAR,
	from_date DATE,
	to_date DATE
);