
-- create
CREATE TABLE Employees (
  id int,
  name varchar(20)
);


-- create
CREATE TABLE EmployeeUNI (
  id int,
  unique_id int
);


INSERT INTO Employees(id, name)
VALUES
	(1, 'Alice'),
	(7, 'Bob'),
	(11, 'Meir'),
	(90, 'Winston'),
	(3, 'Jonathan');


INSERT INTO EmployeeUNI(id, unique_id)
VALUES
	(3, 1),
	(11, 2),
	(90, 3);


select * from Employees;	
select * from EmployeeUNI;


select unique_id, name from Employees e left join 
EmployeeUNI eu on e.id = eu.id
