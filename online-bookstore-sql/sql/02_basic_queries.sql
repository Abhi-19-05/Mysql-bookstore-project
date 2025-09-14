-- 1) Retrieve all books in the "Fiction" genre:
SELECT *
FROM books
WHERE Genre="Fiction";
-- Total = 60 

-- 2) Find books published after the year 1950:
select count(*) 
from books
where  Published_Year > 1950;
-- Total count= 292

-- 3)List all customers from the Canada:
select * 
from customers
where  Country="Canada";
-- Only 3 Customer From Canada

-- 4) Show orders placed in November 2023:
select * 
from orders
where order_date between '2023-11-01' and '2023-11-30';

-- 5) Retrieve the total stock of books available:
select sum(stock) as Total_Stock
from Books;
-- Total Stock=25056

-- 6) Find the details of the most expensive book:
select * from Books 
order by Price desc
limit 1;

-- 7) Show all customers who ordered more than 1 quantity of a book:
select *
from orders
where Quantity >1;

-- 8) Retrieve all orders where the total amount exceeds $20
select * 
from orders
where Total_Amount >20;

-- 9)List all genres available in the Books table:
select distinct Genre
from books;
-- total = 500 Genre

-- 10)Find the book with the lowest stock:
select *
from books
order by Stock asc
limit 1;

-- 11) Calculate the total revenue generated from all orders:
select sum(Total_Amount) as Revenue
from Orders;
-- Total Revenue = 75628.660
