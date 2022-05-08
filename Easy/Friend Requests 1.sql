
-- create
CREATE TABLE friend_request (
  sender_id int,
  send_to_id int,
  request_date date 
);

-- create
CREATE TABLE request_accepted (
  requester_id int ,
  accepter_id int,
  accept_date date
  
);

INSERT INTO friend_request(sender_id, send_to_id, request_date)
VALUES
	(1, 2, '2016_06-01'),
	(1, 3, '2016_06-01'),
	(1, 4, '2016_06-01'),
	(2, 3, '2016_06-02'),
	(3, 4, '2016-06-09');




INSERT INTO request_accepted(requester_id, accepter_id, accept_date)
VALUES
	(1, 2, '2016_06-03'),
	(1, 3, '2016_06-08'),
	(2, 3, '2016_06-08'),
	(3, 4, '2016_06-09'),
	(3, 4, '2016-06-10');

select * from friend_request;	
select * from request_accepted;


with t1 as
(
  select distinct sender_id, send_to_id from
  friend_request
),

t2 as
(
  select distinct requester_id, accepter_id from
  request_accepted
)
select distinct ifnull(round((select count(*) from t2)/(select count(*) from t1),2),0)
as accept_rate
from t1, t2
