
-- create
CREATE TABLE Employee (
  employee_id int primary key,
  team_id int
);




INSERT INTO Employee(employee_id, team_id)
VALUES
	(1, 8),
	(2, 8),
	(3, 8),
	(4, 7),
	(5, 9),
	(6, 9);

select * from Employee;


select e.employee_id, d.team_size from 
Employee e join (
select team_id, count(*) as team_size 
from Employee
group by team_id
) d 
on e.team_id = d.team_id

