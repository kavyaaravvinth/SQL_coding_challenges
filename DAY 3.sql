
-- 1: DISTINCT & WHERE
CREATE DATABASE university;
USE university;
CREATE TABLE department (
	department_id int,
    department_name varchar(30)
);
SELECT * FROM department;
INSERT INTO department (department_id,department_name)
VALUES (1,'Computer Science'),
(2,'Mechanical Engineering'),
(3,'Electrical Engineering'),
(4,'Computer Science'),
(5,'Civil Engineering'),
(6,'Electrical Engineering'),
(7,'Mathematics');
	
SELECT DISTINCT department_name FROM department;

-- 2: IS NULL & NOT NULL
CREATE TABLE students (
	student_name varchar(30),
    email_id varchar (15)
    );
SELECT * FROM STUDENTS;
INSERT INTO students 
VALUES ('Arun','arun@gmail.com'),('Kavya', NULL),('Ravi', 'ravi@yahoo.com'),('Meena', NULL);
   
SELECT * FROM students
WHERE email_id IS NULL;

SELECT * FROM students
WHERE email_id  IS NOT NULL;

-- 3: IN, BETWEEN, NOT BETWEEN

CREATE TABLE IF NOT EXISTS students_academics(
	student_name varchar(30),
    course varchar(30),
    cgpa decimal(3,1)
    );
INSERT INTO students_academics 
VALUES ( 'Arun', 'Computer Science', 8.5),
( 'Kavya', 'Electrical Engineering', 7.2),
( 'Ravi', 'Mechanical Engineering', 6.8),
( 'Meena', 'Computer Science', 9.1),
( 'Suresh', 'Civil Engineering', 5.9);

SELECT * FROM students_academics;

SELECT * FROM students_academics 
WHERE course IN ('Computer Science');

SELECT * FROM students_academics
WHERE cgpa BETWEEN 6.5 AND 8.0;

SELECT * FROM students_academics
WHERE cgpa  NOT BETWEEN 6.5 AND 8.0;
