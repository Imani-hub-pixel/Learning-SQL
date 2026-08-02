SELECT *
FROM employee_demographics;

SELECT *
FROM employee_salary;

-- INNER Join return rows that are the same in both columns from both tables
SELECT dem.employee_id,dem.first_name,dem.last_name,dem.age,sal.occupation,sal.salary,sal.dept_id
FROM employee_demographics AS dem
INNER JOIN employee_salary AS sal
	ON dem.employee_id = sal.employee_id
;

SELECT *
FROM employee_demographics AS dem
RIGHT JOIN employee_salary AS sal
	ON dem.employee_id=sal.employee_id
;

-- SELF JOIN tie a table to itself i.e matching a list of secret santas
SELECT sal1.employee_id AS 'Santa id',
sal1.first_name AS 'first name santa',
sal1.last_name AS 'last name Santa',
sal2.employee_id,
sal2.first_name,
sal2.last_name
FROM employee_salary AS sal1
JOIN employee_salary AS sal2
	ON sal1.employee_id + 1 =sal2.employee_id
ORDER BY sal1.last_name ASC;

-- Joining Multiple Tables together
SELECT dem.employee_id,
dem.first_name,
dem.last_name,
sal.occupation,
pd.department_name,
sal.salary
FROM employee_demographics AS dem
INNER JOIN employee_salary AS sal
	ON dem.employee_id=sal.employee_id
INNER JOIN parks_departments AS pd
	ON sal.dept_id=pd.department_id

;
    



