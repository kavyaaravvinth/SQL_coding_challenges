CREATE DATABASE company;
USE company;
CREATE TABLE Employees (
    emp_id INT,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    join_date DATE
);
INSERT INTO Employees VALUES
(1, 'kavya', 'SEKAR', '2021-06-10'),
(2, 'rahul', 'KUMAR', '2022-01-15'),
(3, 'Anu', 'sharma', '2020-03-20');
SELECT 
    emp_id,
    UPPER(first_name) AS upper_name,
    LOWER(last_name) AS lower_name,
    SUBSTRING(first_name, 1, 3) AS short_name,
    CONCAT(first_name, ' ', last_name) AS full_name
FROM Employees;

SELECT 
    emp_id,first_name,last_name,
    DATEDIFF(NOW(), join_date) / 365 AS tenure_years
FROM Employees;
DELIMITER $$

CREATE FUNCTION getFullName(employee_id int)
RETURNS VARCHAR(100)
DETERMINISTIC
BEGIN
	DECLARE full_name varchar(100);
	SELECT CONCAT(first_name, ' ', last_name) 
    INTO full_name
    FROM employees
    WHERE emp_id = employee_id;
	RETURN full_name;
END$$

DELIMITER ;

SELECT getFullName(1) AS full_name;











