-- 12 Retrieve the total number of books sold for each genre:
select b.Genre, SUM(o.Quantity) as Total_Books_sold
from Orders o
join Books b on o.book_id = b.book_id
group by b.Genre;

-- 13 Find the average price of books in the "Fantasy" genre:
select avg(Price) as Average_Price
from books
where Genre="Fantasy";

-- 14 List customers who have placed at least 2 orders:
select o.Customer_ID, c.name, COUNT(o.Order_ID) AS ORDER_COUNT
from customers c
join orders o on o.Customer_ID=c.Customer_ID
group by o.Customer_ID ,c.name
having count(Order_ID) >=2;

-- 15 Find the most frequently ordered book:
select o.Book_ID, b.Title, COUNT(o.Order_ID) AS ORDER_COUNT
from orders o
join books b on o.Book_ID=b.Book_ID
group by o.Book_ID, b.title
order  by ORDER_COUNT DESC LIMIT 1;

-- 16 Show the top 3 most expensive books of 'Fantasy' Genre :
select * 
from books
where Genre="Fantasy"
order by Price desc limit 3;

-- 17) Retrieve the total quantity of books sold by each author:
select b.Author,sum(Quantity)  as Total_Quantity
from orders o
join Books b on o.Book_ID=b.Book_ID
group by b.Author;

-- 18) List the cities where customers who spent over $30 are located:
select distinct City 
from  orders o
join  customers c on o.Customer_ID=o.Customer_ID
where o.Total_Amount>30;

-- 19 Find the customer who spent the most on orders:
select c.Customer_ID, c.Name, SUM(o.Total_Amount) AS Total_Spent
from orders o
join customers c ON o.Customer_ID=c.Customer_ID
group by c.Customer_ID, c.Name
order by Total_spent Desc LIMIT 1;
