
-- create
CREATE TABLE Weather (
  Id int,
  RecordDate date,
  Temperature int
);



INSERT INTO Weather(Id, RecordDate, Temperature)
VALUES
	(1, '2015-01-01', 10),
	(2, '2015-01-02', 25),
	(3, '2015-01-03', 20),
	(4, '2015-01-04', 30);


select * from Weather;


select a.Id from Weather a, Weather b 
where 
a.Temperature > b.Temperature and 
datediff(a.RecordDate, b.RecordDate) = 1
