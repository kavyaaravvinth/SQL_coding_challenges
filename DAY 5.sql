CREATE DATABASE school;
use school;
CREATE TABLE students (
student_id int primary key,
student_name varchar(20)
);

CREATE TABLE courses (
course_id int primary key,
course_name varchar(15)
);

CREATE TABLE enrollments(
student_id int,
course_id int,
enrollment_id int,
FOREIGN KEY (student_id)
REFERENCES students(student_id)
);
INSERT INTO students (student_id, student_name) VALUES
(1, 'Kavya'),
(2, 'Rahul'),
(3, 'Anu'),
(4, 'Priya'),
(5, 'Suresh');
INSERT INTO courses values (101,'SQL'),(102,'Python'),(103,'cs'),(104,'maths'),(105,'science');
INSERT INTO enrollments (enrollment_id, student_id, course_id) VALUES
(1, 1, 101),
(2, 2, 102),
(3, 3, 103),
(4, 4, 101),
(5, 5, 105);

select * from courses;
select * from students;
select * from enrollments;

SELECT s.student_name, c.course_name
FROM Students s
INNER JOIN Enrollments e
    ON s.student_id = e.student_id
INNER JOIN Courses c
    ON e.course_id = c.course_id;

SELECT s.student_name, e.course_id
FROM Students s
RIGHT JOIN Enrollments e
    ON s.student_id = e.student_id;

CREATE TABLE current_employees (
    emp_id INT,
    emp_name VARCHAR(50)
);

CREATE TABLE past_employees (
    emp_id INT,
    emp_name VARCHAR(50)
);

INSERT INTO current_employees VALUES
(1, 'Kavya'),
(2, 'Rahul');

INSERT INTO past_employees VALUES
(2, 'Rahul'),
(3, 'Anu');
SELECT emp_id, emp_name FROM current_employees
UNION
SELECT emp_id, emp_name FROM past_employees;

















