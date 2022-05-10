
-- create
CREATE TABLE Product (
  product_id int,
  product_name varchar(20),
  unit_price int
);

-- create
CREATE TABLE Sales (
  seller_id int,
  product_id int,
  buyer_id int,
  sale_date date,
  quantity int,
  price int
);




INSERT INTO Product(product_id, product_name, unit_price)
VALUES
	(1, 'S8', 1000),
	(2, 'G4', 800),
	(3, 'iPhone', 1400);
	
INSERT INTO Sales(seller_id, product_id, buyer_id, sale_date, quantity, price)
VALUES
	(1, 1, 1, '2019-01-21', 2, 2000),
	(1, 2, 2, '2019-02-17', 1, 800),
	(2, 2, 3, '2019-06-02', 1, 800),
	(3, 3, 4, '2019-05-13', 2, 2800);


select * from Product;
select * from Sales;

select buyer_id from Sales 
where product_id = any(select product_id from Product where product_name='S8')


