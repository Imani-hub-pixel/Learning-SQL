-- STORED PROCEDURES-way to save your code so that you can resuse it over and over again
CREATE PROCEDURE large_salaries()
SELECT *
FROM employee_salary
WHERE salary >= 50000
;

DELIMITER $$
CREATE PROCEDURE large_salaries2()
BEGIN
	SELECT *
	FROM employee_salary
	WHERE salary >= 50000;
	SELECT *
	FROM employee_salary
	WHERE salary >= 10000;
END $$
DELIMITER $$
CALL large_salaries2();

-- PARAMETER --Variables passed as input into the stored procedure

DELIMITER $$
CREATE PROCEDURE large_salaries3(id INT)
BEGIN
	SELECT salary
	FROM employee_salary
    WHERE employee_id=id;
	
END $$
DELIMITER 
CALL large_salaries3(1);