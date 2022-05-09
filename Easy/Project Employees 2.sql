
-- create
CREATE TABLE Project (
  project_id int,
  employee_id int,
  primary key(project_id, employee_id)
);

-- create
CREATE TABLE Employee (
  employee_id int,
  name varchar(30),
  experience_years int
);


INSERT INTO Project(project_id, employee_id)
VALUES
	(1, 1),
	(1, 2),
	(1, 3),
	(2, 1),
	(2, 4);
	
INSERT INTO Employee(employee_id, name, experience_years)
VALUES
	(1, 'Khaled', 3),
	(2, 'Ali', 2),
	(3, 'John', 1),
	(4, 'Doe', 2);
	

select * from Project;	
select * from Employee;

select project_id, count(project_id) as counter from Project p
  join Employee e on p.employee_id = e.employee_id
  group by project_id;



with t2 as(
  select project_id, rank() over(order by count(project_id) desc) as rk
  from Project 
  group by project_id
  
)
select project_id from t2 where t2.rk=1
