SELECT *
FROM employee_demographics
WHERE gender !='Female';

-- AND OR NOT -- Logical Operators
SELECT *
FROM employee_demographics
WHERE gender !='Female'
AND birth_date > '1977-07-30';

SELECT *
FROM employee_demographics
WHERE gender !='Female'
OR birth_date > '1977-07-30';

-- PEMDAS/BODMAS apply when using logical operators --
SELECT *
FROM employee_demographics
WHERE (gender='Female' AND age >=40) OR age >50;

-- LIKE Statements 
-- % and _
-- % means any value
-- _ means a specific value
-- %******% anything comes before anything comes after
SELECT *
FROM employee_demographics
WHERE first_name LIKE '%a%';

-- i.e 'a__' means the starts wuth an a and has two characters after it
SELECT *
FROM employee_demographics
WHERE first_name LIKE 'a___%';

SELECT *
FROM employee_demographics
WHERE birth_date LIKE '198_%';



