
-- create
CREATE TABLE Activity (
  player_id int,
  device_id int,
  event_date date,
  games_played int
);


INSERT INTO Activity(player_id, device_id, event_date, games_played)
VALUES
	(1, 2, '2016-03-01', 5),
	(1, 2, '2016-05-02', 6),
	(2, 3, '2017-06-25', 1),
	(3, 1, '2016-03-02', 0),
	(3, 4, '2018-07-03', 5);

select * from Activity;	


select a.player_id, a.device_id from 
Activity a join 
(
select player_id, min(event_date) as first_login 
from Activity
group by player_id
) b
on a.event_date = b.first_login
