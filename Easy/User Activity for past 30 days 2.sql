
-- create
CREATE TABLE Activity (
  user_id int,
  session_id int,
  activity_date date,
  activity_type enum('open_session', 'end_session', 'scroll_down', 'send_message')
);



INSERT INTO Activity(user_id, session_id, activity_date, activity_type)
VALUES
	(1, 1, '2019-07-20', 'open_session'),
	(1, 1, '2019-07-20', 'scroll_down'),
	(1, 1, '2019-07-20', 'end_session'),
	(2, 4, '2019-07-20', 'open_session'),
	(2, 4, '2019-07-21', 'send_message'),
	(2, 4, '2019-07-21', 'end_session'),
	(3, 2, '2019-07-21', 'open_session'),
	(3, 2, '2019-07-21', 'send_message'),
	(3, 2, '2019-07-21', 'end_session'),
	(3, 5, '2019-07-21', 'open_session'),
	(3, 5, '2019-07-21', 'scroll_down'),
	(3, 5, '2019-07-21', 'end_session'),
	(4, 3, '2019-06-25', 'open_session'),
	(4, 3, '2019-06-25', 'end_session');

select * from Activity;

select ifnull(round(avg(a.counter),2),0) as average_sessions_per_user from 
(
select user_id, count(distinct session_id) as counter from Activity
where activity_date between '2019-06-28' and '2019-07-27'
group by user_id)a
