CREATE DATABASE IF NOT EXISTS shop;
USE shop;

CREATE TABLE Orders (
    order_id INT PRIMARY KEY,
    customer_name VARCHAR(50),
    product_name VARCHAR(50),
    order_date DATE
);

CREATE TABLE Order_History (
    order_id INT,
    customer_name VARCHAR(50),
    product_name VARCHAR(50),
    order_date DATE,
    deleted_at DATETIME
);

INSERT INTO Orders VALUES
(1, 'Kavya', 'Laptop', '2026-01-01'),
(2, 'Rahul', 'Phone', '2026-01-02');

DELIMITER $$

CREATE TRIGGER log_order_deletion
BEFORE DELETE ON Orders
FOR EACH ROW
BEGIN
    INSERT INTO Order_History(order_id, customer_name, product_name, order_date, deleted_at)
    VALUES (OLD.order_id, OLD.customer_name, OLD.product_name, OLD.order_date, NOW());
END$$

DELIMITER ;
DELETE FROM Orders WHERE order_id = 1;

CREATE USER 'junior_analyst'@'localhost' IDENTIFIED BY 'password';
GRANT SELECT ON shop.Orders TO 'junior_analyst'@'localhost';
FLUSH PRIVILEGES;
REVOKE SELECT ON shop.Orders FROM 'junior_analyst'@'localhost';

CREATE TABLE BankAccounts (
    account_id INT,
    account_name VARCHAR(50),
    balance DECIMAL(10,2)
);

START TRANSACTION;
UPDATE BankAccounts SET balance = balance - 1000 WHERE account_id = 1;
UPDATE BankAccounts SET balance = balance + 1000 WHERE account_id = 2;
COMMIT;




