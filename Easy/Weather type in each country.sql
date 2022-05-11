
-- create
CREATE TABLE Countries (
  country_id int primary key,
  country_name varchar(20)
);

-- create
CREATE TABLE Weather (
  country_id  int,
  weather_state varchar(20),
  day date,
  primary key(country_id, day)
);

INSERT INTO Countries(country_id, country_name)
VALUES
	(2, 'USA'),
	(3, 'Australia'),
	(7, 'Peru'),
	(5, 'China'),
	(8, 'Morocco'),
	(9, 'Spain');
	
INSERT INTO Weather(country_id, weather_state, day)
VALUES
	(2, 15, '2019-11-01'),
	(2, 12, '2019-10-28'),
	(2, 12, '2019-10-27'),
	(3, -2, '2019-11-10'),
	(3, 0, '2019-11-11'),
	(3, 3, '2019-11-12'),
	(5, 16, '2019-11-07'),
	(5, 18, '2019-11-09'),
	(5, 21, '2019-11-23'),
	(7, 25, '2019-11-28'),
	(7, 22, '2019-12-01'),
	(7, 20, '2019-12-02'),
	(8, 25, '2019-11-05'),
	(8, 27, '2019-11-15'),
	(8, 31, '2019-11-25'),
	(9, 7, '2019-10-23'),
	(9, 3, '2019-12-23');
	
	
	
	
select * from Weather;
select * from Countries;


with t1 as
(
  select country_id, avg(weather_state) as weather_temp 
  from Weather
  where 
  month(day)=11 and year(day)=2019
  group by country_id
)
select c.country_name, 
(
case when t1.weather_temp <=15 then "Cold"
     when t1.weather_temp >15 and t1.weather_temp<=24 then "Warm"
     else 
     "Hot"
     end
) as weather_type from Countries c join t1

on c.country_id = t1.country_id
