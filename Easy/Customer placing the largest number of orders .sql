
-- create
CREATE TABLE orders (
  order_number int primary key,
  customer_number int,
  order_date date,
  required_date date,
  shipped_date date,
  status  char(15),
  comment char(200)
);



INSERT INTO orders(order_number, customer_number, order_date, required_date,shipped_date, status, comment)
VALUES
	(1, 1, '2017-04-09', '2017-04-13', '2017-04-12', 'Closed', ''),
	(2, 2, '2017-04-15', '2017-04-20', '2017-04-18', 'Closed', ''),
	(3, 3, '2017-04-16', '2017-04-25', '2017-04-20', 'Closed', ''),
	(4, 3, '2017-04-18', '2017-04-28', '2017-04-25', 'Closed', '');
	
	
select * from orders;

with t1 as(
select customer_number, rank() over(order by count(customer_number) desc) as ranking
        from orders
	group by customer_number
)
select customer_number from t1 
where ranking=1
