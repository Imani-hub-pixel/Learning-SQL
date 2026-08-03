-- Add logic to the statement

SELECT first_name,last_name,age,
CASE
	WHEN age <=30 THEN 'Young'
    WHEN age BETWEEN 31 AND 50 THEN 'Mid_Age'
    WHEN age >= 50 THEN 'Old'
END  AS Age_bracket
FROM employee_demographics;


-- Pay Increase and bonus
-- <50000 =5%
-- >50000 =7%
-- Finance department = 10% bonus
SELECT sal.employee_id,sal.first_name,sal.last_name,sal.occupation,sal.salary,dep.department_name,
CASE
	WHEN sal.salary <50000 THEN sal.salary+(sal.salary*0.05) 
    WHEN sal.salary>50000 THEN sal.salary +(sal.salary*0.07)
END AS New_salary,
CASE
	WHEN  dep.department_name ='Finance' THEN sal.salary*0.1
END AS bonus
FROM employee_salary AS sal
INNER JOIN parks_departments AS dep
	ON sal.dept_id=dep.department_id


;

