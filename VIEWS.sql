-- View is database object created over an SQL query
-- Cannot store data and is treated as a virtual table

SELECT *
FROM employee_demographics;

SELECT *
FROM employee_salary;

CREATE VIEW salary_summary AS
SELECT dem.employee_id,dem.first_name,dem.last_name,sal.salary,pd.department_name
FROM employee_demographics AS dem
JOIN employee_salary AS sal
	ON dem.employee_id=sal.employee_id
JOIN parks_departments AS pd
	ON sal.dept_id=pd.department_id;
    
SELECT *FROM salary_summary;

-- Purpose of a view
-- When we want to share a view to a client,we create a new user for that particular client who will have access that they are authorized to have.alter
-- Security
-- Simplify complex sql queries




