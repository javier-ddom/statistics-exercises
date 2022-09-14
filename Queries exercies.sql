USE employees;
#SHOW TABLES;
#DESCRIBE employees;

/*
SELECT emp_no
FROM employees 
WHERE hire_date =
(
SELECT hire_date
FROM employees 
WHERE emp_no = 101010
AND to_date > CURDATE()
)

*/
#2
/*
SELECT title 
FROM titles
WHERE emp_no IN (SELECT emp_no
				FROM employees
                WHERE first_name = "Aamod")
*/


#3
/* 91479 was what. i got

SELECT COUNT(to_date)
FROM dept_emp
WHERE to_date < CURDATE();
*/

#4

