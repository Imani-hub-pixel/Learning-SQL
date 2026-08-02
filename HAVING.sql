-- HAVING VS WHERE

SELECT gender ,AVG(age) AS avg_age
FROM employee_demographics
GROUP BY gender
HAVING avg_age > 40;

SELECT occupation,AVG(salary) AS avg_salary
FROM employee_salary
WHERE occupation LIKE '%manager%'
GROUP BY occupation
HAVING avg_salary >70000;
