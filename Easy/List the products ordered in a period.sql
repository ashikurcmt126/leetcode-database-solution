
-- create
CREATE TABLE Products (
  product_id int,
  product_name varchar(30),
  product_category varchar(20)
);

-- create
CREATE TABLE Orders (
  product_id int,
  order_date date,
  unit int
);


INSERT INTO Products(product_id, product_name, product_category)
VALUES
	(1, 'Leetcode Solutions', 'Book'),
	(2, 'Jewels of Stringology','Book'),
	(3, 'HP', 'Laptop'),
	(4, 'Lenovo', 'Laptop'),
	(5, 'Leetcode Kit', 'T-shirt');
	

INSERT INTO Orders(product_id, order_date, unit)
VALUES
	(1, '2020-02-05', 60),
	(1, '2020-02-10', 70),
	(2, '2020-01-18', 30),
	(2, '2020-02-11', 80),
	(3, '2020-02-17', 2),
	(3, '2020-02-24', 3),
	(4, '2020-03-01', 20),
	(4, '2020-03-04', 30),
	(5, '2020-02-25', 50),
	(5, '2020-02-27', 50),
	(5, '2020-03-01', 50);
	

select * from Products;	
select * from Orders;	


with t1 as (
  select p.product_id, product_name from Products p, Orders o
  where p.product_id = o.product_id
  and month(o.order_date) = 2 and year(order_date) = 2000
),
t2 as(
  select product_id, sum(unit) as counter 
  from Orders
  where month(order_date) = 2 and year(order_date) = 2000
  group by product_id
)

select distinct t1.product_name, t2.counter from t1 join t2
on t1.product_id = t2.product_id 
where t2.counter >= 100
