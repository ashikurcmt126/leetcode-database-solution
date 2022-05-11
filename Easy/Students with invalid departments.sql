
-- create
CREATE TABLE Departments (
  id int primary key,
  name varchar(200)
);


-- create
CREATE TABLE Students (
  id int primary key,
  name varchar(20),
  department_id int 
);



INSERT INTO Departments(id, name)
VALUES
	(1, 'Electrical Engineering'),
	(7, 'Computer Engineering'),
	(13, 'Bussiness Administration');

INSERT INTO Students(id, name, department_id)
VALUES
	(23, 'Alice', 1),
	(1, 'Bob', 7),
	(5, 'Jennifer', 13),
	(2, 'John', 14),
	(4, 'Jasmine', 77),
	(3, 'Steve', 74),
	(6, 'Luis', 1),
	(8, 'Jonathan', 7),
	(7, 'Daiana', 33),
	(11, 'Madelynn', 1);
	


select id from Departments;
select * from Students;


select distinct id, name from Students
where 
department_id != all(select id from Departments);


select distinct s.id, s.name from Students s left join
Departments d on s.department_id = d.id
where 
s.department_id is null
