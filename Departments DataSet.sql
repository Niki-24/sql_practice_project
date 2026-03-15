use company_analysis ;
-- CREATING TABLR DEPARTMENTS 
CREATE TABLE departments
(
department_id INT PRIMARY KEY, 
department_name VARCHAR(50),
location VARCHAR(50)
);

-- INSERTING VALUES INTO DEPARTMENTS 
INSERT INTO departments VALUES
(1,'IT','Mumbai'),
(2,'HR','Delhi'),
(3,'Finance','Pune'),
(4,'Sales','Bangalore'),
(5,'Marketing','Hyderabad'); 
