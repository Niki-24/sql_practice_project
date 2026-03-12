use company_analysis;
--  CREATING TABLE PROJECTS
CREATE TABLE projects(
project_id INT PRIMARY KEY,
project_name VARCHAR(50),
department_id INT, 
start_date DATE ); 

--  INSERTING VALUES INTO PROJECTS TABLE
INSERT INTO Projects VALUES
(1,'Data Migration',1,'2023-01-10'),
(2,'HR Automation',2,'2023-02-15'),
(3,'Financial Dashboard',3,'2022-11-20'),
(4,'Sales Tracker',4,'2023-03-05'),
(5,'Marketing Campaign',5,'2023-04-01'),
(6,'Cloud Upgrade',1,'2023-05-12'),
(7,'Recruitment Portal',2,'2023-06-10'),
(8,'Budget Analysis',3,'2022-12-18'),
(9,'Sales Forecast',4,'2023-02-22'),
(10,'SEO Optimization',5,'2023-01-30'),
(11,'System Security',1,'2023-04-20'),
(12,'Employee Training',2,'2023-03-18'),
(13,'Audit Automation',3,'2022-10-05'),
(14,'Customer Analytics',4,'2023-05-01'),
(15,'Brand Promotion',5,'2023-02-10'),
(16,'Server Monitoring',1,'2023-06-01'),
(17,'Payroll System',2,'2023-01-25'),
(18,'Tax Reporting',3,'2022-09-15'),
(19,'Retail Expansion',4,'2023-04-12'),
(20,'Social Media Strategy',5,'2023-03-28');
