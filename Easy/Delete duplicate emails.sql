
-- create
CREATE TABLE Person (
  Id int primary key,
  Email varchar(20)
  
);


INSERT INTO Person(Id, Email)
VALUES
	(1, 'john@example.com'),
	(2, 'bob@example.com'),
	(3, 'john@example.com');


select * from Person;	

with t1 as(
  select *, row_number() over(partition by email order by Id) as rk 
  from Person
)	
delete from Person
where id in (select t1.id from t1 where t1.rk > 1);

select * from Person;

