-- =====================
-- SQL Joins Practice
-- =====================
-- 1. Show employee name and their department name
	SELECT 
		e.emp_name as Employee_Name,
        d.department_name as Department_Name
	FROM employees e
    JOIN departments d
    ON e.department_id = d.department_id;
-- 2.Show employee name and project name for employees working on projects.  
	SELECT 
		e.emp_name as Employee_Name,
        p.project_name as Project_Name,
        e.emp_id as Employee_Id
	FROM employees e
    JOIN employee_project ep 
    ON e.emp_id = ep.emp_id
    JOIN projects p 
    ON ep.project_id = p.project_id;
   
-- 3. Show all employees and their project names.
	SELECT 
		e.emp_name,
		p.project_name
	FROM employees e
	LEFT JOIN employee_project ep
	ON e.emp_id = ep.emp_id
	LEFT JOIN projects p
	ON ep.project_id = p.project_id;
    
-- 4. Show project name and total hours worked on each project.
	SELECT 
		p.project_name as Project_Name,
        sum(ep.hours_worked) as Total_Hours 
	FROM projects p
    JOIN employee_project ep
	ON p.project_id = ep.project_id 
    GROUP BY p.project_name ;
-- 5. Show department name and number of employees in each department.
		SELECT 
			d.department_name as Department_Name ,
            COUNT(e.emp_id) as Total_Employees
        FROM  employees e
        JOIN departments d
        ON e.department_id = d.department_id 
        GROUP BY d.department_name ;
-- 6.Show employee name and total hours worked across all projects. 
	SELECT 
		e.emp_name,
		SUM(ep.hours_worked) as Total_Hours
	FROM employees e
	JOIN employee_project ep
	ON e.emp_id = ep.emp_id
	GROUP BY e.emp_name;
			
-- 7. Show employees who are not assigned to any project.
		SELECT 
			e.emp_name as Employee_Name,
            e.emp_id Employee_Id 
        FROM employees e
        LEFT JOIN employee_project as ep
        ON e.emp_id = ep.emp_id 
        WHERE ep.emp_id is  null ;
-- 8. Show department name and number of projects in each department.
	SELECT 
		d.department_name as Department_Name,
        COUNT(p.project_id ) as Total_project
    FROM departments d 
    JOIN projects p
    ON d.department_id = p.department_id 
    GROUP BY d.department_name ;
    
-- 9.Show project name and employee names working on that project.
		SELECT 
		p.project_name,
		e.emp_name
	FROM projects p
	JOIN employee_project ep
	ON p.project_id = ep.project_id
	JOIN employees e
	ON ep.emp_id = e.emp_id;
    
-- 10.Show the employee who worked the most hours.
	SELECT
		e.emp_name as Employee_Name,
		SUM(ep.hours_worked) as Total_Hours
    FROM employees e
    JOIN employee_project ep
    ON e.emp_id = ep.emp_id 
    GROUP BY ep.emp_id
    ORDER BY Total_Hours desc
    LIMIT 1;
    
    