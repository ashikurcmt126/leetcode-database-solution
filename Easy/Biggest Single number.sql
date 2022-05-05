
-- create
CREATE TABLE num (
  number int
);



INSERT INTO num(number)
VALUES
	(8),
	(8),
	(3),
	(3),
	(1),
	(4),
	(5),
	(6);
	
select * from num;
	
select number, rank() over(order by number) ranking
from num;

select d.number from(
select number, rank() over(order by number) ranking
from num
group by number 
having count(number)=1
) d
order by d.number desc
limit 1
