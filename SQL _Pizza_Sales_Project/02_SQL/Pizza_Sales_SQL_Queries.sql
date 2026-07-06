
create database pizzahut;

select * from pizzahut.pizzas;
 
create table orders (
order_id int not null,
order_date date not null,
order_time time not null,
primary key(order_id));

create table orders_details (
orders_details_id int not null,
order_id int not null,
pizza_id text not null,
quantity int not null,
primary key(orders_details_id));




-- 1. Retrive the total number of orders placed.
SELECT 
    COUNT(order_id) AS total_orders
FROM
    orders;


-- 2.Calculate the total revenue generated from pizza sales.

select
round(sum(orders_details.quantity*pizzas.price),2) as total_sales
from orders_details join pizzas
on pizzas.pizza_id = orders_details.pizza_id ;


-- 3.Identify the highest-priced pizza.

select
 pizza_types.name,pizzas.price
from pizza_types join pizzas
on pizza_types.pizza_type_id = pizzas.pizza_type_id
order by pizzas.price desc limit 1;


-- 4.identify the most common pizza size ordered

SELECT 
    pizzas.size,
    COUNT(orders_details.orders_details_id) AS order_count
FROM
    pizzas
        JOIN
    orders_details ON pizzas.pizza_id = orders_details.pizza_id
GROUP BY pizzas.size
ORDER BY order_count DESC;


SELECT 
    pizzas.size,
    COUNT(orders_details.orders_details_id) AS order_count
FROM
    pizzas
        JOIN
    orders_details ON pizzas.pizza_id = orders_details.pizza_id
GROUP BY pizzas.size
ORDER BY order_count DESC
LIMIT 1;



-- 5.List the Top 5 most ordered pizza types.
-- along with their quantities.

select pizza_types.name,
sum(orders_details.quantity) as quantity
from pizza_types join pizzas
on pizza_types.pizza_type_id = pizzas.pizza_type_id
join orders_details
on orders_details.pizza_id = pizzas.pizza_id
group by pizza_types.name order by quantity desc limit 5;




-- INTERMEDIATE


-- 6.Jpin the necessary tables to find the total quantity of each pizza category ordered.alter
select pizza_types.category,
sum(orders_details.quantity) as quantity
from pizza_types join pizzas
on pizza_types.pizza_type_id = pizzas.pizza_type_id
join orders_details
on orders_details.pizza_id = pizzas.pizza_id
group by pizza_types.category order by quantity desc;



-- 7.determine the distribution of orders by hour of the day.

select hour(order_time), count(order_id) from orders
group by hour(order_time);


-- 8.join relevant tables to find the category- wise distribution of pizzas.

select category ,count(name) from pizza_types
group by category;


-- 9.Group the orders by date and calculate the average number of pizzas ordered per day

SELECT 
  round(AVG(quantity),0) as avg_pizza_ordered_per_day
from
(select orders.order_date, sum(orders_details.quantity) as quantity
from orders join orders_details
on orders.order_id = orders_details.order_id
group by orders.order_date) as order_quantity;



-- 10.determine the top 3 most ordered pizza types based on revenue.

select pizza_types.name,
sum(orders_details.quantity * pizzas.price) as revenue
from pizza_types join pizzas
on pizzas.pizza_type_id = pizza_types.pizza_type_id
join orders_details
on orders_details.pizza_id = pizzas.pizza_id
group by pizza_types.name order by revenue desc limit 3;



-- 11.Calculate the percentage contribution of each pizza type to total revenue.

select pizza_types.category,
round(sum(orders_details.quantity*pizzas.price) / (SELECT 
    ROUND(SUM(orders_details.quantity * pizzas.price),
            2) AS total_Sales
FROM
    orders_details
        JOIN
    pizzas ON pizzas.pizza_id = orders_details.pizza_id )*100,2) as revenue
from pizza_types join pizzas
on pizza_types.pizza_type_id = pizzas.pizza_type_id
join orders_details
on orders_details.pizza_id = pizzas.pizza_id
group by pizza_types.category order by revenue desc ;




-- 12.analyze the cumulative revenue generated over time

select order_date,
sum(revenue) over(order by order_date) as cum_revenue
from
(select orders.order_date,
sum(orders_details.quantity * pizzas.price) as revenue
from orders_details join pizzas
on orders_details.pizza_id =pizzas.pizza_id
join orders
on orders.order_id = orders_details.order_id
group by orders.order_date)as sales ;





-- 13.determine the Top 3 most ordered pizza types based on revenue for each pizza category.
select name, revenue from

(select category , name , revenue,
rank() over(partition by category order by revenue desc) as rn
from
(select pizza_types.category, pizza_types.name,
sum((orders_details.quantity) * pizzas.price) as revenue
from pizza_types join pizzas
on pizza_types.pizza_type_id = pizzas.pizza_type_id
join orders_details
on orders_details.pizza_id = pizzas.pizza_id
group by pizza_types.category , pizza_types.name) as a ) as b
where rn <=3;


SELECT 
    o.order_id,
    o.order_date,
    o.order_time,
    od.quantity,
    p.price,
    (od.quantity * p.price) AS revenue,
    pt.name,
    pt.category,
    p.size
FROM orders o
JOIN orders_details od ON o.order_id = od.order_id
JOIN pizzas p ON od.pizza_id = p.pizza_id
JOIN pizza_types pt ON p.pizza_type_id = pt.pizza_type_id;

SHOW TABLES;

SELECT * FROM orders LIMIT 5;
SELECT * FROM orders_details LIMIT 5;
SELECT * FROM pizzas LIMIT 5;
SELECT * FROM pizza_types LIMIT 5;
