-- String functions.
-- LENGTH
SELECT first_name,LENGTH(first_name) AS len_first_name
FROM employee_demographics
ORDER BY len_first_name ;

-- i.e Used Length when verifying phone numbers if they are exactly 10
-- UPPER,LOWER- used to correct standardization issues.

SELECT first_name,UPPER(first_name) AS upper_first_name
FROM employee_demographics;

SELECT first_name,LOWER(first_name) AS lower_first_name
FROM employee_demographics;

-- TRIM -used to  take the whitespace on the front or end and get rid of it
-- RTRIM,LTRIM(right and left trim)

SELECT TRIM('     SKY  ');

-- LEFT AND RIGHT
SELECT first_name,LEFT(first_name,3)
FROM employee_demographics;


-- SUBSTRINGS
SELECT first_name,last_name,birth_date,
SUBSTRING(birth_date,1,4) AS birth_year,
SUBSTRING(birth_date,6,2) AS birth_month,
SUBSTRING(birth_date,9,2) AS birth_day
FROM employee_demographics;

-- REPLACE
SELECT first_name,REPLACE(first_name,'a','z')
FROM employee_demographics;

-- LOCATE
SELECT LOCATE('x','Alexander');

-- CONCAT- Concatenation of columns

SELECT first_name,last_name,
CONCAT(first_name,' ',last_name) AS full_name
FROM employee_demographics;



