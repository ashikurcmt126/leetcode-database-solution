
-- create
CREATE TABLE Customers (
  Id int primary key,
  Name varchar(20)
  
);

-- create
CREATE TABLE Orders (
  Id int ,
  CustomerId int
  
);

INSERT INTO Customers(Id, Name)
VALUES
	(1, 'Joe'),
	(2, 'Henry'),
	(3, 'Sam'),
	(4, 'Max');

INSERT INTO Orders(Id, CustomerId)
VALUES
	(1, 3),
	(2, 1);
	

select * from Customers;	
select * from Orders;

select Name as customers from 
Customers 
where id != All(
  select c.id from Customers c, Orders o
  where c.id = o.CustomerId
)
