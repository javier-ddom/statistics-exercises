/*
USE employees;

DESCRIBE departments;
SELECT * FROM departments;

DESCRIBE dept_emp;

SHOW CREATE TABLE dept_emp;
*/
/*
'CREATE TABLE `dept_emp` (
  `emp_no` int NOT NULL,
  `dept_no` char(4) NOT NULL,
  `from_date` date NOT NULL,
  `to_date` date NOT NULL,
  PRIMARY KEY (`emp_no`,`dept_no`),
  KEY `dept_no` (`dept_no`),
  CONSTRAINT `dept_emp_ibfk_1` FOREIGN KEY (`emp_no`) REFERENCES `employees` (`emp_no`) ON DELETE CASCADE ON UPDATE RESTRICT,
  CONSTRAINT `dept_emp_ibfk_2` FOREIGN KEY (`dept_no`) REFERENCES `departments` (`dept_no`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=latin1'
*/
/*
DESCRIBE employees;
SELECT * FROM employees LIMIT 60;
SELECT * FROM dept_emp LIMIT 40;
#iiner join of empoyees and dept_no
SELECT *
FROM employees 
JOIN dept_emp ON employees.emp_no = dept_emp.emp_no
LIMIT 60;

#inner join of employes dept_emp and departments
SELECT *
FROM employees
JOIN dept_emp ON employees.emp_no = dept_emp.emp_no
JOIN departments ON dept_emp.dept_no = departments.dept_no
LIMIT 50;

#selecting first_name, last_name, and dept_name from inner join of employees, dept_emp, dept_no
SELECT employees.first_name,
		employees.last_name,
		department.dept_name
FROM employees
JOIN dept_emp ON employees.emp_no = dept_emp.emp_no
JOIN departments ON dept_emp.dept_no = departments.dept_no
LIMIT 50;

# same as above but with ALIASES
SELECT e.first_name,
		e.last_name,
		d.dept_name
FROM employees AS e
JOIN dept_emp AS de ON e.emp_no = de.emp_no
JOIN departments AS d ON de.dept_no = d.dept_no
WHERE e.gender = 'F'
LIMIT 50;

/*
SELECT d.dept_name,
	ROUND(AVG(salary), 2) AS average_salary
FROM dept_emp de
JOIN salaries s ON de.emp_no = s.emp_no
	AND de.to_date > CURDATE()
    AND s.to_date > CURDATE()
JOIN departments d ON do.dept_no = d.dept_no
GROUP BY d.dept_name
ORDER BY average_salary DESC
LIMIT 1;

*/

#question 8
USE employees; 
SELECT * FROM dept_manager;
SELECT * FROM salaries;
SELECT * FROM departments;

/*
SELECT e.first_name, e.last_name
FROM employees e 
JOIN dept_emp de ON e.emp_no = de.emp_no
	AND de.to_date > CURDATE()
JOIN salaries s ON e.emp_no = s.emp_no
	AND s.to_date > CURDATE()
JOIN department d ON de.dept_no = d.dept_no
	AND d.dept_name = 'Marketing'
ORDER BY s.salary DESC
LIMIT 1;
*/

#question 9
/*
SELECT e.first_name, e.last_name, salary, d.dept_name
FROM employees e
JOIN dept_manager dm ON e.emp_no = dm.emp_no
	AND dm.to_date > CURDATE()
JOIN salaries s ON e.emp_no = s.emp_no
	AND s.to_date > CURDATE()
JOIN departments d ON dm.dept_no = d.dept_no
ORDER BY s.salary DESC
LIMIT 1;
*/

#question 10
SELECT * FROM dept_emp;
SELECT * FROM salaries;
SELECT * FROM departments;

SELECT d.dept_name, ROUND(AVG(s.salary), 0) AS average_salary
FROM departments d
JOIN dept_emp de ON d.dept_no = de.dept_no
JOIN salaries s ON de.emp_no = s.emp_no
GROUP BY d.dept_name
ORDER BY average_salary DESC;