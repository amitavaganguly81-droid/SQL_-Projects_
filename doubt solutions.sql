-- Retrieve customer name and email for email marketing
select name, email from customers;
-- View complete product catalog with all available details
select * from products;
-- List all unique product categories
select distinct category from products;
--  Show all products priced above ₹1,000
select * from products where price>1000;
-- Display products within a mid-range price bracket (₹2,000 to ₹5,000)
select * from products where price>=2000 and price<=5000;
-- Fetch data for specific customer IDs (e.g., from loyalty program list
select * from customers where customer_id in(3,4,5);
--  Identify customers whose names start with the letter ‘A'
select * from customers where name like 'A%';
-- . List electronics products priced under ₹3,000
select * from products where  category ='Electronics' and price<3000;
--  Display product names and prices in descending order of price
select * from products where price order by 'desc';
-- Display product names and prices, sorted by price and then by name
select name, price from products order by price desc, name asc;
-- Retrieve orders where customer information is missing (possibly due to data migration or deletion)
select * from orders where customer_id is null;
-- Display customer names and emails using column aliases for frontend readability
select name AS customers_name , email AS customers_email from customers;
-- Calculate total value per item ordered by multiplying quantity and item price
select name, price*stock_quantity as total_value from products;
-- Combine customer name and phone number in a single column
select concat(name, "-->", phone) as contact_directory from customers;
--  Extract only the date part from order timestamps for date-wise reporting
select date(order_date) from orders;
-- List products that do not have any stock left
SELECT * FROM products Where stock_quantity = 0;
-- Count the total number of orders placed
select count(*) as count_orders from orders;
--  Calculate the total revenue collected from all orders
select sum(total_amount) as total_revenue from orders;
-- Count the total number of orders placed
select * from orders;
select count(*) as count_orders from orders;
-- Calculate the total revenue collected from all orders
select sum(total_amount) as total_revenue from orders;
-- Calculate the average order value
select avg( total_amount) from orders;
-- Count the number of customers who have placed at least one order
select count(distinct customer_id) as customer_count from orders;
-- Find the number of orders placed by each customer
select count(customer_id) as customer_count from orders;
--  Find total sales amount made by each customer
select customer_id, sum(total_amount) from orders group by customer_id;
-- List the number of products sold per category
select p.category, count(p.category)
from order_items oi
left join products p
on oi.product_id = p.product_id
group by p.category;
-- Find the average item price per category
select category, avg(price) from products
group by category;
-- Show number of orders placed per day
select date(order_date), count(order_id)
from orders group by date(order_date);
-- List total payments received per payment method
select method, sum(amount_paid)
from payments
group by method;
-- Level 4
-- Retrieve order details along with the customer name (INNER JOIN)
SELECT o.order_id, c.name AS customer_name
FROM orders o
INNER JOIN customers c
ON o.customer_id = c.customer_id;
-- Get list of products that have been sold (INNER JOIN with order_items DISTINCT p.product_id,
	Select p.product_id
FROM products p
INNER JOIN order_items oi 
    ON p.product_id = oi.product_id;
-- List all orders with their payment method (INNER JOIN)
select * from orders;
select * from payments;
SELECT o.order_id,
       o.order_date
FROM orders o
INNER JOIN payments p
    ON o.order_id = p.order_id;
    -- Get list of customers and their orders (LEFT JOIN)
SELECT c.customer_id,
       o.order_id,
       o.order_date
FROM customers c
LEFT JOIN orders o
ON c.customer_id = o.customer_id;
-- List all products along with order item quantity (LEFT JOIN)
Select * from products;
Select p.product_id,
       oi.quantity
FROM products p
LEFT JOIN order_items oi
ON p.product_id = oi.product_id;
-- List all payments including those with no matching orders (RIGHT JOIN)
SELECT 
    o.order_id,
    o.order_date,
    p.payment_id
FROM orders o
RIGHT JOIN payments p
    ON o.order_id = p.order_id;
-- Combine data from three tables: customer, order, and payment
select c.*, o.*, p.*
from orders o
left join customers c
on o.customer_id =c.customer_id
left join payments p
on o.order_id = p.order_id;
-- List all products priced above the average product price
select * from products where price > (select avg(price) from products);
--  Find customers who have placed at least one order
select customer_id, count(customer_id)from customers group by orders(customer_id) having count(order_id)=1;
-- Show orders whose total amount is above the average for that customer
select * from orders o where total_amount >(select avg(total_amount) from orders
where customer_id = o.customer_id);
-- Display customers who haven’t placed any orders
select name from customers where customer_id not in (select customer_id from orders);
-- Show products that were never ordered
select name from products where product_id not in 
(select product_id from orders);
--  Show highest value order per customer
select customer_id, max(total_amount) from orders group by customer_id; 
-- Highest Order Per Customer (Including Names)
SELECT c.name,
       MAX(o.order_id) AS highest_order
FROM customers c
JOIN orders o
ON c.customer_id = o.customer_id
GROUP BY c.name;
-- List all customers who have either placed an order or written a product review
select customer_id from orders
union
select customer_id from product_reviews;
-- List all customers who have placed an order as well as reviewed a product
select distinct customer_id from orders where customer_id in 
(select customer_id from product_reviews);
select distinct customer_id from orders where customer_id in
(select customer_id from product_reviews);
-- End of Project