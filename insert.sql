-- Active: 1733136189665@@127.0.0.1@3306@my_database



INSERT INTO Product (product_ID, product_Name, Category, Price) VALUES
('P01', 'Samsung Galaxy S20', 'Smartphone', 299.00),
('P02', 'ASUS Notebook', 'PC', 4599.00);
INSERT INTO CUSTOMER (Customer_id, Customer_Name, Customer_Tel) VALUES
('C01', 'ALI', '71321009'),
('C02', 'ASMA', '77345823');

INSERT INTO ORDERS (Customer_id, Product_id, OrderDate, Quantity, Total_amount) VALUES
('C01', 'P02', NULL, 2, 9198),
('C02', 'P01', '2020-05-28', 1, 299);
SELECT * FROM Product;
SELECT * FROM customer;
SELECT * FROM orders;