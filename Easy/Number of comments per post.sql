
-- create
CREATE TABLE Submissions (
  sub_id int,
  parent_id int
);


INSERT INTO Submissions(sub_id, parent_id)
VALUES
	(1, NULL),
	(2, NULL),
	(1, NULL),
	(12, NULL),
	(3, 1),
	(5, 2),
	(3, 1),
	(4, 1),
	(9, 1),
	(10, 2),
	(6, 7);
	

select * from Submissions;	



select a.sub_id as post_id, coalesce(b.counter,0) as number_of_comments from 

(
  select distinct parent_id, sub_id
  from Submissions 
  where parent_id is NULL
)a left join 
(
select parent_id, count(distinct(sub_id)) as counter
from Submissions
group by parent_id
having parent_id = any(
  select parent_id
  from Submissions 
  where parent_id is not NULL
))b 
on a.sub_id = b.parent_id
