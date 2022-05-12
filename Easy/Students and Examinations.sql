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


select * from examinations;
select * from students;
select * from subjects;

select a.student_id, a.student_name, a.subject_name, coalesce(counter, 0) as attended_exams
from 
(
select student_id, student_name, subject_name from students 
cross join subjects
) a left join 
(
  select e.student_id, e.subject_name, count(*) as counter from examinations e
  join subjects s
  on e.subject_name = s.subject_name
  group by e.subject_name, e.student_id
)b on 
a.student_id = b.student_id and a.subject_name = b.subject_name
order by a.student_id, a.subject_name asc
