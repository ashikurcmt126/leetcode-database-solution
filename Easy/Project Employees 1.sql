
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


select a.project_id, round(a.experience_years/a.counter,2) from 
(
select p.project_id, count(project_id) as counter, sum(experience_years) as experience_years from Project p join Employee e on p.employee_id = e.employee_id
group by project_id
)a
