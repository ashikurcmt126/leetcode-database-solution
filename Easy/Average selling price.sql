
-- create
CREATE TABLE Prices (
  product_id int,
  start_date date,
  end_date date,
  price int
);

-- create
CREATE TABLE UnitsSold (
  product_id int,
  purchase_date date,
  units int
);

INSERT INTO Prices(product_id, start_date, end_date, price)
VALUES
	(1, '2019-02-17', '2019-02-28', 5),
	(1, '2019-03-01', '2019-03-22', 20),
	(2, '2019-02-01', '2019-02-20', 15),
	(2, '2019-02-21', '2019-03-31', 30);


INSERT INTO UnitsSold(product_id, purchase_date, units)
VALUES
	(1, '2019-02-25', 100),
	(1, '2019-03-01', 15),
	(2, '2019-02-10', 200),
	(2, '2019-03-22', 30);
	
	
	
SELECT * FROM Prices;
SELECT * FROM UnitsSold;

select d.product_id, round((sum(price*units)+0.0)/(sum(units)+0.0),2) as average_price
from(
  select * from Prices p natural join UnitsSold u 
  where u.purchase_date BETWEEN p.start_date and p.end_date
) d 
group by d.product_id
