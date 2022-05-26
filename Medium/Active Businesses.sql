-- create
CREATE TABLE Events (
  business_id int,
  event_type varchar(20),
  occurences int, 
  primary key(business_id, event_type)
);

	
INSERT INTO Events(business_id, event_type, occurences)
VALUES
      (1, 'reviews', 7),
      (3, 'reviews', 3),
      (1, 'ads', 11),
      (2, 'ads', 7),
      (3, 'ads', 6),
      (1, 'page views', 3),
      (2, 'page views', 12);

select * from Events;

select a.business_id from 
(
  select * from Events
)a
join 
(
  select event_type, round(avg(occurences),2) as avgerage from Events
  group by event_type
)b on a.event_type = b.event_type
where b.avgerage < a.occurences
group by a.business_id
having count(*) > 1
