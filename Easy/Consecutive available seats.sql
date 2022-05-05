
-- create
CREATE TABLE cinema (
  seat_id int,
  free int
);



INSERT INTO cinema(seat_id, free)
VALUES
	(1, 1),
	(2, 0),
	(3, 1),
	(4, 1),
	(5, 1);
	
	
select * from cinema;


select seat_id from(
  select seat_id, free,
  lead(free,1) over() as next,
  lag(free,1) over() as prev
  from cinema
) d 
where d.free = True and (next = True or prev = True)
order by seat_id
