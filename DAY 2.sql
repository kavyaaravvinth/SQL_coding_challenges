-- 1.PRIMARY KEY AND FOREIGN KEY
-- TO CREATE THE DATABASE NAME ONLINE BOOKSTORE
CREATE DATABASE online_bookstore;

-- USE THE ONLINE BOOKSTORE
USE online_bookstore;

-- BOOKID AS PRIMARY KEY
CREATE TABLE books(
	bookID int Primary key
);

-- BOOKID AS FORIEGN KEY	
CREATE TABLE orders(
	bookID int,
	FOREIGN KEY (bookID) REFERENCES books(bookID)
);

-- 2.UNIQUE CONSTRAINTS
ALTER TABLE books
ADD COLUMN ISBN int unique;

select * from books;

-- 3.DELETE VS TRUNCATE
delete from books 
where bookID = 1;
truncate table orders;