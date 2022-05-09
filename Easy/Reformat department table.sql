
-- create
CREATE TABLE Department (
  id int,
  revenue int,
  month varchar(20)
);


INSERT INTO Department(id, revenue, month)
VALUES
	(1, 8000, 'Jan'),
	(2, 9000, 'Jan'),
	(3, 10000, 'Feb'),
	(1, 7000, 'Feb'),
	(1, 6000, 'Mar');



select * from Department;	


select id, 
sum(if(month='Jan',revenue, null)) as Jan_Revenue,
sum(if(month='Feb',revenue, null)) as Jan_Revenue,
sum(if(month='Mar',revenue, null)) as Jan_Revenue,
sum(if(month='Apr',revenue, null)) as Jan_Revenue,
sum(if(month='May',revenue, null)) as Jan_Revenue,
sum(if(month='Jun',revenue, null)) as Jan_Revenue,
sum(if(month='Jul',revenue, null)) as Jan_Revenue,
sum(if(month='Aug',revenue, null)) as Jan_Revenue,
sum(if(month='Sep',revenue, null)) as Jan_Revenue,
sum(if(month='Oct',revenue, null)) as Jan_Revenue,
sum(if(month='Nov',revenue, null)) as Jan_Revenue,
sum(if(month='Dec',revenue, null)) as Jan_Revenue
from Department
group by id
