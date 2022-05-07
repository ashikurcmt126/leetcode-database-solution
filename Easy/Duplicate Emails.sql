
-- create
CREATE TABLE Person (
  Id int primary key,
  Email varchar(20)
  
);


INSERT INTO Person(Id, Email)
VALUES
	(1, 'a@b.com'),
	(2, 'c@d.com'),
	(3, 'a@b.com');


select * from Person;	

select d.Email from 
(
select Email, count(*) as counter
from Person 
group by Email
) d
where counter >1 
group by d.Email;

----Another solution----
select Email from
(
  select Email, count(*) as counter
  from Person 
  group by Email
  having count(Email)>1
)a
