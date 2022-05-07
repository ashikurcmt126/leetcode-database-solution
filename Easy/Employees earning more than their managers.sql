
-- create
CREATE TABLE Employee (
  Id int primary key,
  Name varchar(20),
  Salary int,
  ManagerId int
);




INSERT INTO Employee(Id, Name, Salary, ManagerId)
VALUES
	(1, 'Joe', 70000, 3),
	(2, 'Henry', 80000, 4),
	(3, 'Sam', 60000, NULL),
	(4, 'Max', 90000, NULL);



select * from Employee;	

select e.Name as employee
from 
Employee e, Employee b
where e.Salary > b.Salary and e.ManagerId = b.Id;
