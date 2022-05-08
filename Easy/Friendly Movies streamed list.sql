
-- create
CREATE TABLE TVProgram (
  program_date date,
  content_id int,
  channel varchar(20) 
);

-- create
CREATE TABLE Content (
  content_id int ,
  title varchar(20),
  Kids_content varchar(4),
  content_type varchar(20)
);

INSERT INTO TVProgram(program_date, content_id, channel)
VALUES
	('2020-06-10 08:00', 1, 'LC-Channel'),
	('2020-05-11 12:00', 2, 'LC-Channel'),
	('2020-05-12 12:00', 3, 'LC-Channel'),
	('2020-05-13 14:00', 4, 'Disney Ch'),
	('2020-06-18 14:00', 4, 'Disney Ch'),
	('2020-07-15 16:00', 5, 'Disney Ch');


INSERT INTO Content(content_id, title, Kids_content, content_type)
VALUES
	(1, 'Leetcode Movie', 'N', 'Movies'),
	(2, 'Alg. for Kids', 'Y', 'Series'),
	(3, 'Database Sols', 'N', 'Movies'),
	(4, 'Aladdin', 'Y', 'Movies'),
	(5, 'Cinderella', 'Y', 'Movies');
	

select * from TVProgram;	
select * from Content;


select distinct title from TVProgram t join Content c
on t.content_id = c.content_id 
where 
c.Kids_content = 'Y' and c.content_type = 'Movies' and month(t.program_date) = 6
