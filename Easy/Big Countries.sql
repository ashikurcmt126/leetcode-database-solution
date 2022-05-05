
-- create
CREATE TABLE World (
  name varchar(20),
  continent varchar(20),
  area int,
  population int,
  gdp int
);



INSERT INTO World(name, continent, area, population, gdp)
VALUES
	('Afghanistan', 'Asia', 652230, 25500100,20343000),
	('Albania', 'Europe', 28748, 2831741,12960000),
	('Algeria', 'Africa', 2381741, 37100000,188681000),
	('Andorra', 'Europe', 468, 78115,3712000),
	('Angola', 'Africa', 1246700, 20609294,100990000);
	

SELECT * FROM World;

SELECT name, population, area
FROM World
where area > 3000000 or population > 25000000
