
-- create
CREATE TABLE Sessions (
  session_id int,
  duration int
);



INSERT INTO Sessions(session_id, duration)
VALUES
	(1, 30),
	(2, 199),
	(3, 299),
	(4, 580),
	(5, 1000);
	
	
select * from Sessions;
(
select '[0-5>' as bin, 
sum(case when duration/60 <5 then 1 else 0 end) as total from Sessions
) 
union
(
select '[5-10>' as bin, 
sum(case when (duration/60 >=5) and duration/60 <10 then 1 else 0 end) as total from Sessions
)
union
(
select '[10-15>' as bin, 
sum(case when (duration/60 >=10) and duration/60 <15 then 1 else 0 end) as total from Sessions
)
union
(
select '15 or more' as bin, 
sum(case when (duration/60 >=15) then 1 else 0 end) as total from Sessions
)
