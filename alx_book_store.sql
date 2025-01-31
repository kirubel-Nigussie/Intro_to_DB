CREATE DATABASE alx_book_store;
CREATE TABLE Authors(
  author_id INT PRIMARY KEY,
  author_name VARCHAR(215)  
);

CREATE TABLE Books (
  book_id INT PRIMARY KEY,
  title VARCHAR(130),
  author_id INT,
  FOREIGN KEY (author_id) REFERENCES Authors(author_id),
  price DOUBLE,
  publication_date DATE
);

CREATE TABLE Customers(
  customer_id INT PRIMARY KEY,
  customer_name VARCHAR(215),
  email VARCHAR(215),
  address TEXT
);

CREATE Table Orders(
  order_id INT PRIMARY KEY,
  customer_id INT,
  FOREIGN KEY (customer_id) REFERENCES Customers(customer_id),
  order_date DATE  

);
CREATE Table Order_Details(
  orderdetailid INT PRIMARY KEY,
  order_id INT,
  Foreign Key (order_id) REFERENCES Orders(order_id),
  book_id INT,
  Foreign Key (book_id) REFERENCES Books(book_id),
  quantity DOUBLE
);

SHOW TABLES;