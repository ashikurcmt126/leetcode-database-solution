
-- create
CREATE TABLE point (
  x int
);



INSERT INTO point(x)
VALUES
	(-1),
	(3),
	(2);

select * from point;


select min(abs(abs(a.x)-abs(a.next_closest))) as shortest
from(
  select *, lead(x) over(order by x) as next_closest
  from point
)a
