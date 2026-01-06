CREATE DATABASE ecommerce;
USE ecommerce;
CREATE TABLE products (
	product_id int,
    product_name varchar(20),
	price int
    );
INSERT INTO products (product_id, product_name, price) VALUES
(1, 'Laptop', 75000),
(2, 'Smartphone', 45000),
(3, 'Tablet', 30000),
(4, 'Smart Watch', 15000),
(5, 'Headphones', 8000),
(6, 'Gaming Laptop', 120000),
(7, 'Bluetooth Speaker', 6000),
(8, 'DSLR Camera', 95000),
(9, 'Monitor', 22000),
(10, 'Keyboard', 2500);

select * from products order by price desc limit 3;

-- aggregate function

CREATE TABLE sales (
    sale_id INT,
    product_name VARCHAR(100),
    quantity INT,
    total_amount DECIMAL(10,2)
);

INSERT INTO sales VALUES(1, 'Laptop', 2, 150000),
(2, 'Smartphone', 5, 225000),
(3, 'Tablet', 3, 90000),
(4, 'Headphones', 10, 80000),
(5, 'Smart Watch', 4, 60000);

SELECT count(*) FROM sales AS total_sales;
select sum(total_amount) from sales as total_revenue;
select avg(total_amount) from sales as avg_revenue;
select max(total_amount) from sales as max_amount;
select min(total_amount) from sales as min_amount;

--  Find departments with more than 10 employees.
use employee;
select * from employee;
select department_id,count(employee_id) 
from employee
group by department_id
having count(employee_id) > 2;







