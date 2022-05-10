
-- create
CREATE TABLE Employee (
  Id int,
  Salary int
);



INSERT INTO Employee(Id, Salary)
VALUES
	(1, 100),
	(2, 200),
	(3, 300);

select * from Employee;

select a.Salary from 
(
select Salary, rank() over(order by Salary desc) as rk
from Employee
)a
where a.rk = 2;


select max(Salary) from Employee
where Salary != (select max(Salary) from Employee)
