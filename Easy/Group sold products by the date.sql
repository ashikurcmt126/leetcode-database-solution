
-- create
CREATE TABLE Activities (
  sell_date date,
  product varchar(20)
);


INSERT INTO Activities(sell_date, product)
VALUES
	('2020-05-30', 'Headphone'),
	('2020-06-01', 'Pencil'),
	('2020-06-02', 'Mask'),
	('2020-05-30', 'Basketball'),
	('2020-06-01', 'Bible'),
	('2020-06-02', 'Mask'),
	('2020-05-30', 'T-Shirt');

select * from Activities;	

select sell_date, count(distinct product) as num_sold, group_concat(distinct product)
from Activities
group by sell_date
order by 1 
