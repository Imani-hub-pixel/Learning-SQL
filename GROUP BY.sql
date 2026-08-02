SELECT gender,AVG(age)
FROM employee_demographics
GROUP BY gender;

SELECT occupation,AVG(salary),MAX(salary),COUNT(occupation)
FROM employee_salary
GROUP BY occupation;


-- ORDER BY
SELECT *
FROM employee_demographics
ORDER BY gender DESC,age ASC;
