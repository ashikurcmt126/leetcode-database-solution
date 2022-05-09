
-- create
CREATE TABLE Queries (
  query_name varchar(20),
  result varchar(20),
  position int,
  rating int
);


INSERT INTO Queries(query_name, result, position, rating)
VALUES
	('Dog', 'Golden Retriever',1, 5),
	('Dog', 'German Shepherd',2, 5),
	('Dog', 'Mule',200, 1),
	('Cat', 'Shirazi',5, 2),
	('Cat', 'Siamese',3, 3),
	('Cat', 'Sphynx',7, 4);



select * from Queries;	

select query_name, round(sum(rating/position)/count(query_name),2) as quality,
round(avg(case when rating<3 then 1 else 0 end)*100,2) as poor_query_percentage
from Queries 
group by query_name 
