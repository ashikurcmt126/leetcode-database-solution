
-- create
CREATE TABLE Delivery (
  delivery_id int,
  customer_id int,
  order_date date,
  customer_pref_delivery_date date
);


INSERT INTO Delivery(delivery_id, customer_id, order_date, customer_pref_delivery_date)
VALUES
	(1, 1, '2019-08-01', '2019-08-02'),
	(2, 5, '2019-08-02', '2019-08-02'),
	(3, 1, '2019-08-11', '2019-08-11'),
	(4, 3, '2019-08-24', '2019-08-26'),
	(5, 4, '2019-08-21', '2019-08-22'),
	(6, 2, '2019-08-11', '2019-08-13');

select * from Delivery;	

select round(count(delivery_id)/(select count(*) from Delivery)*100,2)
as immediate_percentage from Delivery
where order_date = customer_pref_delivery_date;

select round(avg(case when order_date = customer_pref_delivery_date then 1 else 0 end)*100,2) as immediate_percentage
from Delivery;
