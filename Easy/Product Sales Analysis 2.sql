
-- create
CREATE TABLE Sales (
  sale_id int,
  product_id int,
  year int,
  quantity int,
  price int 
);

-- create
CREATE TABLE Product (
  product_id int,
  product_name varchar(30) 
);


INSERT INTO Sales(sale_id, product_id, year, quantity, price)
VALUES
	(1, 100, 2008, 10, 5000),
	(2, 100, 2009, 12, 5000),
	(7, 200, 2011, 15, 9000);
	
INSERT INTO Product(product_id, product_name)
VALUES
	(100, 'Nokia'),
	(200, 'Apple'),
	(300, 'Samsung');
	

select * from Sales;	
select * from Product;

select product_id, sum(quantity) as total_quantity 
from Sales
group by product_id
