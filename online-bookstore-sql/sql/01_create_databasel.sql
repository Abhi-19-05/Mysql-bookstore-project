create database BookStore;
use BookStore;
-- create tables 
drop table if exists Customers;
create table  Customers (
   Customer_ID 	serial	PRIMARY KEY,
   Name VARCHAR(100),
   Email VARCHAR(50),
   Phone VARCHAR(15),
   City VARCHAR(100),
   Country VARCHAR(150)
);
-- TABLE BOOKS
DROP  TABLE IF exists Books;
create table Books(
Book_ID serial primary KEY,
Title varchar(150),
Author varchar(100),
Genre varchar(100),
Published_Year int,
Price numeric (10,2),
Stock int
);

-- Orders Table
DROP  TABLE IF exists Orders;
create table Orders(
Order_ID serial primary KEY,
Customer_ID INT REFERENCES Customers(Customer_ID),
Book_ID INT REFERENCES Books(Book_ID),
Order_Date date,
Quantity int,
Total_Amount numeric(10,3)
);
select * from customers;
select * from books;
select * from orders;

