use company_analysis ; 
-- ==== BEGINEER LEVEL ====
-- 1.Show all employees.
	SELECT *
    FROM employees; 
-- 2. Show employee name and salary
	SELECT emp_name, salary
    FROM employees ;
-- 3. Show employees whose salary is greater than 60000.
	SELECT *
    FROM employees
    WHERE salary > 60000 ;
-- 4. Show employees who work in department 1.
	SELECT e.*, d.*
    FROM employees e
    JOIN departments d
    ON e.emp_id = d.department_id 
    WHERE d.department_id = 1 ;
-- 5. Show employees hired after 2022.
	SELECT *
    FROM employees 
    WHERE YEAR(hire_date) > '2022';
-- 6. Show employees from Mumbai city.
	SELECT * 
    FROM employees
    WHERE city = "Mumbai" ; 
-- 7. Show employees with salary between 50000 and 70000.
	SELECT *
    FROM 
    employees 
    WHERE salary between  50000 and 70000 ;
-- 8. Show employees whose name starts with 'A'
	SELECT emp_name
    FROM employees
    WHERE emp_name like 'A%';
 
 