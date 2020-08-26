1)
SELECT e.emp_no, e.last_name, e.first_name, e.sex, s.salary
FROM employees e
INNER JOIN salaries s 
ON e.emp_no = s.emp_no;

2)
SELECT first_name, last_name, hire_date 
FROM employees
WHERE EXTRACT(YEAR FROM hire_date) = 1986;

3)
SELECT d.dept_no, d.dept_name, e.emp_no, e.last_name, e.first_name, 
t.title_id, t.title  
FROM employees e 
INNER JOIN department_managers m  ON e.emp_no = m.emp_no
INNER JOIN titles t 			  ON e.emp_title_id=t.title_id
INNER JOIN departments d		  ON m.dept_no=d.dept_no;
  

4)
SELECT e.emp_no, e.last_name, e.first_name, d.dept_no, d.dept_name
FROM employees e
INNER JOIN dept_empl de ON e.emp_no=de.emp_no
INNER JOIN departments d ON de.dept_no=d.dept_no;

5)
SELECT first_name, last_name, sex
FROM employees
WHERE first_name = 'Hercules' and last_name like 'B%';

6)
SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
FROM employees e
INNER JOIN dept_empl de ON e.emp_no=de.emp_no
INNER JOIN departments d ON de.dept_no=d.dept_no
WHERE d.dept_name = 'Sales';

7)
SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
FROM employees e
INNER JOIN dept_empl dp ON e.emp_no=dp.emp_no
INNER JOIN departments d ON dp.dept_no=d.dept_no
WHERE d.dept_name = 'Sales' or d.dept_name = 'Development';

8)
SELECT 
  last_name, 
  COUNT(last_name) as emp_same_name
FROM employees  
GROUP BY last_name
ORDER BY last_name;