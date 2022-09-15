USE employees;
#1

/*
SELECT de.emp_no,
de.dept_no,
de.from_date AS start_date,
de.to_date AS end_date,
de.to_date > NOW() AS is_current_employee
FROM dept_emp de
ORDER BY emp_no
LIMIT 100;
*/

#2

#SELECT * from employees;
/*
SELECT first_name, last_name,
LEFT(last_name, 1) AS first_letter_of_last_name,
CASE
	WHEN LEFT(last_name, 1) <= 'H' THEN 'A-H'
    WHEN SUBSTR(last_name, 1, 1) <= 'Q' THEN 'I-Q'
    WHEN LEFT(last_name, 1) <= 'Z' THEN 'R-Z'
END AS alpha_group
FROM employees;
*/

#3
/*
SELECT
	COUNT(CASE WHEN birth_date BETWEEN '1950-01-01' AND '1959-12-31' THEN birth_date ELSE NULL END) AS '50s',
    COUNT(CASE WHEN birth_date BETWEEN '1960-01-01' AND '1960-12-31' THEN birth_date ELSE NULL END) AS '60s'
FROM employees
*/


#4
SELECT
CASE
WHEN d.dept_name IN ('Research', 'Development') THEN 'R&D'
WHEN d.dept_name IN('Sales', 'Marketing') then 'Sales & Marketing'
when d.dept_name in ('Production', 'Quality Management') then 'Prod & QM'
when d.dept_name in ('Finance','Human Resources') then 'Finance & HR'
ELSE d.dept_name
END as dept_group, salary
FROM departments d
JOIN dept_emp de USING (dept_no)
JOIN salaries s USING (emp_no)
WHERE s.to_date > NOW() AND de.to_date > NOW();


