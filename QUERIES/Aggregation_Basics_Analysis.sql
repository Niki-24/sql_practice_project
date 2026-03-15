use company_analysis;
-- Count total employees in the company
	SELECT COUNT(*) as total_employees
    FROM employees;
-- Find the average salary of employees. 
	SELECT AVG(salary) as Avg_Salary
    FROM employees;
-- Find the maximum salary.
	SELECT MAX(salary) as Max_Salary
    FROM employees;
-- Find the minimum salary.
	SELECT MIN(salary)as Min_Salary
    FROM employees;
-- Count employees in each department.
	SELECT d.department_name as Department, COUNT(e.emp_id) as total_employees
    FROM Employees e
    JOIN departments d
    ON e.department_id = d.department_id 
    GROUP BY d.department_name; 
-- Show department id and total salary of that department.
	SELECT d.department_id as Department_ID, SUM(e.salary) as Total_Salary
    FROM departments d
    JOIN employees e
    ON d.department_id = e.department_id
    GROUP BY d.department_id;
    
-- Find minimum salary in each department.
	SELECT d.department_name as Department_Name, Min(e.salary) as Min_Salary
    FROM employees e
    JOIN departments d
    ON e.department_id = d.department_id 
    GROUP BY d.department_name ;
-- Show departments having more than 10 employees.
	SELECT d.department_name as Department_Name, COUNT(e.emp_id) as Total_Employees
    FROM employees e
    JOIN departments d
    ON e.department_id = d.department_id
    GROUP BY d.department_name
    HAVING COUNT(e.emp_id)>10;
-- Find average salary of each department.
	SELECT d.department_name as Department_Name, Avg(e.salary) as Avg_Salary
    FROM employees e
    JOIN departments d
    ON e.department_id = d.department_id
    GROUP BY d.department_name;
-- Show cities and number of employees in each city.
	SELECT city, COUNT(*) as Total_Employees
    FROM employees
    GROUP BY city;
 
   