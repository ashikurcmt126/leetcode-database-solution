
-- create
CREATE TABLE temp (
  id int primary key,
  name varchar(200),
  sex varchar(20),
  salary int 
);





INSERT INTO temp(id, name, sex, salary)
VALUES
	(1, 'A', 'm', 2500),
	(2, 'B', 'f', 1500),
	(3, 'C', 'm', 5500),
	(4, 'D', 'f', 500);

	


select * from temp;


update temp 
set sex = (case when
  sex='m' then 'f' 
  when sex='f' then 'm'
  end
);

select * from temp;
