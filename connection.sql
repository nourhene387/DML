-- Active: 1733136189665@@127.0.0.1@3306@my_db
CREATE DATABASE IF NOT EXISTS my_db;
use my_db;
-- create TABLE
-- Create PRODUCT table
CREATE TABLE PRODUCT (
  Product_id VARCHAR(20) PRIMARY KEY,
  product_name VARCHAR(200) NOT NULL,
  Category VARCHAR(20),
  Price NUMERIC CONSTRAINT Price_Positive CHECK (Price > 0)
);



-- Create CUSTOMER table  
CREATE TABLE CUSTOMER (
  Customer_id VARCHAR(20) PRIMARY KEY,
  Customer_Name VARCHAR(200) NOT NULL,
  Customer_Tel VARCHAR(20) NOT NULL
);

CREATE TABLE ORDERS (
   Customer_id VARCHAR(20), 
  Product_Id VARCHAR(20),
  OrderDate TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  Quantity INT CONSTRAINT Quantity_Positive CHECK (Quantity > 0),
  Total_amount DECIMAL(10,2) CONSTRAINT Total_amount_Positive CHECK (Total_amount > 0),
  CONSTRAINT Customer_Id_FK FOREIGN KEY (Customer_id) REFERENCES CUSTOMER(Customer_id),
  CONSTRAINT Product_Id_FK FOREIGN KEY (Product_Id) REFERENCES PRODUCT(Product_id)
);


