
-- create
CREATE TABLE Actions (
  user_id int,
  post_id int,
  action_date date,
  action enum('view', 'like', 'reaction', 'comment', 'report', 'share'),
  extra varchar(20)
);



INSERT INTO Actions(user_id, post_id, action_date, action, extra)
VALUES
	(1, 1, '2019-07-01', 'view', null),
	(1, 1, '2019-07-01', 'like', null),
	(1, 1, '2019-07-01', 'share', null),
	(2, 4, '2019-07-04', 'view', null),
	(2, 4, '2019-07-04', 'report', 'spam'),
	(3, 4, '2019-07-04', 'view', null),
	(3, 4, '2019-07-04', 'report', 'spam'),
	(4, 3, '2019-07-02', 'view', null),
	(4, 3, '2019-07-02', 'report', 'spam'),
	(5, 2, '2019-07-04', 'view', null),
	(5, 2, '2019-07-04', 'report', 'racism'),
	(5, 5, '2019-07-04', 'view', null),
	(5, 5, '2019-07-04', 'report', 'racism');



select * from Actions;

select extra as report_reason, count(distinct(post_id)) as report_count
from Actions 
where (extra = 'spam' or extra = 'racism') and 
action_date = DATE_SUB("2019-07-5", INTERVAL 1 DAY)
group by extra
