USE company;
CREATE TABLE Employees_detail (
    emp_id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    dept_id INT
);
CREATE TABLE Departments (
    dept_id INT PRIMARY KEY,
    dept_name VARCHAR(50)
);
CREATE TABLE Salaries (
    emp_id INT,
    salary INT,
    FOREIGN KEY (emp_id) REFERENCES Employees_detail(emp_id)
);
INSERT INTO Employees_detail VALUES
(1, 'Kavya', 'Sekar', 101),
(2, 'Rahul', 'Kumar', 102),
(3, 'Anu', 'Sharma', 101);


INSERT INTO Departments VALUES
(101, 'IT'),
(102, 'HR');

INSERT INTO Salaries VALUES
(1, 50000),
(2, 45000),
(3, 40000);

DELIMITER $$

CREATE PROCEDURE getEmployeeById(IN empId INT)
BEGIN
    SELECT *
    FROM Employees_detail
    WHERE emp_id = empId;
END$$

DELIMITER ;

CALL getEmployeeById(2);

CREATE VIEW employee_department_view AS
SELECT 
    CONCAT(first_name, ' ', last_name) AS employee_name,
    dept_id
FROM Employees_detail;

CREATE VIEW employee_full_details AS
SELECT 
    e.emp_id,
    CONCAT(e.first_name, ' ', e.last_name) AS employee_name,
    d.dept_name,
    s.salary
FROM Employees_detail e
JOIN Departments d
    ON e.dept_id = d.dept_id
JOIN Salaries s
    ON e.emp_id = s.emp_id;

SELECT * FROM employee_department_view;
SELECT * FROM employee_full_details;






