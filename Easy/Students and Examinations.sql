
-- create
CREATE TABLE students (
  student_id int primary key,
  student_name varchar(20)
);


-- create
CREATE TABLE subjects (
  subject_name varchar(20) primary key
);

-- create
CREATE TABLE examinations (
  student_id int,
  subject_name varchar(20)
);



INSERT INTO students(student_id, student_name)
VALUES
	(1, 'Alice'),
	(2, 'Bob'),
	(13, 'John'),
	(6, 'Alex');

INSERT INTO subjects(subject_name)
VALUES
	('Math'),
	('Physics'),
	('Programming');
	
INSERT INTO examinations(student_id, subject_name)
VALUES
	(1, 'Math'),
	(1, 'Physics'),
	(1, 'Programming'),
	(2, 'Programming'),
	(1, 'Physics'),
	(1, 'Math'),
	(13, 'Math'),
	(13, 'Programming'),
	(13, 'Physics'),
	(2, 'Math'),
	(1, 'Math');

select * from students;
select * from subjects;
select * from examinations;
