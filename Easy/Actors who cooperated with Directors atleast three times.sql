-- create
CREATE TABLE ActorDirector (
  actor_id int,
  director_id int,
  timestamp1 int primary key
);



INSERT INTO ActorDirector(actor_id, director_id, timestamp1)
VALUES
	(1, 1, 0),
	(1, 1, 1),
	(1, 1, 2),
	(1, 2, 3),
	(1, 2, 4),
	(2, 1, 5),
	(2, 1, 6);
	
SELECT * FROM ActorDirector;

