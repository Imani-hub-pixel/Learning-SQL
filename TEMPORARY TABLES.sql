-- Temporary tables

CREATE TEMPORARY TABLE temp_table
(
first_name VARCHAR(50),
last_name VARCHAR(50),
favourite_movie VARCHAR(100)
);
SELECT*
FROM temp_table;

INSERT INTO temp_table
VALUES('Faith','Chepngeno','The originals');

SELECT*
FROM temp_table;

SELECT *
FROM employee_salary;

CREATE TEMPORARY TABLE sal_over_50k
SELECT*
FROM employee_salary
WHERE salary >=50000;

SELECT *
FROM sal_over_50k;




