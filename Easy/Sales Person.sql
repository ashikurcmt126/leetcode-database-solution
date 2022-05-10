
-- create
CREATE TABLE salesperson (
  sales_id int,
  name varchar(20),
  salary int,
  commission_rate int,
  hire_date varchar(20) 
);

-- create
CREATE TABLE company (
  com_id int,
  name varchar(20),
  city varchar(20)
);

-- create
CREATE TABLE orders (
  order_id int,
  order_date varchar(20),
  com_id int,
  sales_id int,
  amount int 
);


INSERT INTO salesperson(sales_id, name, salary, commission_rate, hire_date)
VALUES
	(1, 'John', 100000, 6, '4/1/2006'),
	(2, 'Amy', 120000, 5, '5/1/2010'),
	(3, 'Mark', 65000, 12, '12/25/2008'),
	(4, 'Pam', 25000, 25, '1/1/2005'),
	(5, 'Alex', 50000, 10, '2/3/2007');
	
	
INSERT INTO company(com_id, name, city)
VALUES
	(1, 'RED', 'Boston'),
	(2, 'ORANGE', 'New York'),
	(3, 'YELLOW', 'Boston'),
	(4, 'GREEN', 'Austin');

INSERT INTO orders(order_id, order_date, com_id, sales_id, amount)
VALUES
	(1, '1/1/2014', 3, 4, 100000),
	(2, '2/1/2014', 4, 5, 5000),
	(3, '3/1/2014', 1, 1, 50000),
	(4, '4/1/2014', 1, 4, 25000);
	
select * from salesperson;
select * from company;
select * from orders;



with t1 as
(
  select s.sales_id, o.com_id from salesperson s 
  left join orders o on s.sales_id = o.sales_id
)
select name from salesperson s join t1
on 
t1.sales_id = s.sales_id 
where
t1.sales_id not in (select sales_id from t1 where com_id =1)
