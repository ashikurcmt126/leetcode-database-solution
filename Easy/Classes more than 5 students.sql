
-- create
CREATE TABLE college (
  student varchar(20),
  class varchar(20)
);



INSERT INTO college(student, class)
VALUES
	('A', 'Math'),
	('B', 'English'),
	('C', 'Math'),
	('D', 'Biology'),
	('E', 'Math'),
	('F', 'Computer'),
	('G', 'Math'),
	('H', 'Math'),
	('I', 'Math');

	
select * from college;

select class from college 
group by class
having count(*)>=5
