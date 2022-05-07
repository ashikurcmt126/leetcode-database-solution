
-- create
CREATE TABLE customer (
  id int primary key,
  name varchar(20),
  referee_id int
);




INSERT INTO customer(id, Name, referee_id)
VALUES
	(1, 'Will', NULL),
	(2, 'Jane', NULL),
	(3, 'Alex', 2),
	(4, 'Bill', NULL),
	(5, 'Zack', 1),
	(6, 'Mark', 2);



select * from customer;	


select name from customer
where 
referee_id !=2 or referee_id is NULL
