
-- create
CREATE TABLE Employee (
  empId int primary key,
  name varchar(20),
  supervisor int,
  salary int
);


-- create
CREATE TABLE Bonus (
  empId int primary key,
  bonus int
);


INSERT INTO Employee(empId, name, supervisor, salary)
VALUES
	(1, 'John', 3, 1000),
	(2, 'Dan', 3, 2000),
	(3, 'Brad', null, 4000),
	(4, 'Thomas', 3, 4000);

INSERT INTO Bonus(empId, bonus)
VALUES
	(2, 500),
	(4, 2000);


select * from Employee;	
select * from Bonus;	


select name, bonus from Employee e left join Bonus b
on e.empId = b.empId
where b.bonus < 1000 or b.bonus is null
