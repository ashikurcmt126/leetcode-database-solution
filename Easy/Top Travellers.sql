
-- create
CREATE TABLE Users (
  id int primary key,
  name varchar(200)
);


-- create
CREATE TABLE Rides (
  id int primary key,
  user_id int,
  distance int
);



INSERT INTO Users(id, name)
VALUES
	(1, 'Alice'),
	(2, 'Bob'),
	(3, 'Alex'),
	(4, 'Donald'),
	(7, 'Lee'),
	(13, 'Jonathan'),
	(19, 'Elvis');
	
INSERT INTO Rides(id, user_id, distance)
VALUES
	(1, 1, 120),
	(2, 2, 317),
	(3, 3, 222),
	(4, 7, 100),
	(5, 13, 312),
	(6, 19, 50),
	(7, 7, 120),
	(8, 19, 400),
	(9, 7, 230);
	


select * from Users;
select * from Rides;

select user_id, coalesce(sum(r.distance),0) as counter from Rides r
group by user_id;


select name, coalesce(sum(r.distance),0) as travelled_distance from Users u
left join Rides r 
on u.id = r.user_id 
group by u.name
order by travelled_distance desc, name
