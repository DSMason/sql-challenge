-- Employee Details: number, name, gender, salary

SELECT emp.emp_no, emp.first_name, emp.last_name, emp.gender, s.salary 
FROM employees AS emp
JOIN salaries AS s ON
emp.emp_no = s.emp_no;

-- Employees Hired in 1986

SELECT emp.first_name, emp.last_name 
FROM employees AS emp
WHERE 
	emp.hire_date >= '1986-01-01'
AND emp.hire_date <= '1986-12-31';

-- Manager details: dept number, dept name, emp number, name, start and end employment dates

SELECT m.emp_no, m.dept_no, m.from_date, m.to_date, d.dept_name, emp.first_name, emp.last_name
FROM dept_manager AS m
JOIN employees AS emp
ON m.emp_no = emp.emp_no
JOIN departments AS d
ON m.dept_no = d.dept_no;

--Employee Department info, including: emp number, name, dept name

SELECT emp.emp_no, emp.last_name, emp.first_name, d.dept_name
FROM employees AS emp
JOIN dept_emp
ON emp.emp_no=dept_emp.emp_no
JOIN departments AS d
ON d.dept_no=dept_emp.dept_no;

--All employees named Hercules with last name beginning with "B"

SELECT first_name, last_name
FROM employees
WHERE first_name= 'Hercules'
AND last_name LIKE 'B%';

--Sales department employees: emp number, name, dept

SELECT emp.emp_no, emp.last_name, emp.first_name, d.dept_name 
FROM employees AS emp
JOIN dept_emp
ON dept_emp.emp_no=emp.emp_no
JOIN departments AS d
ON d.dept_no=dept_emp.dept_no
WHERE d.dept_name = 'Sales';

--Sales and Development Depts: emp number, name, dept name

SELECT emp.emp_no, emp.last_name, emp.first_name, d.dept_name 
FROM employees AS emp
JOIN dept_emp
ON dept_emp.emp_no=emp.emp_no
JOIN departments AS d
ON d.dept_no=dept_emp.dept_no
WHERE d.dept_name = 'Sales'
OR d.dept_name = 'Development';

--Frequency of Last Name in Desc Order

SELECT last_name, count(last_name)
FROM employees
GROUP BY last_name 
ORDER BY count(last_name) desc;





