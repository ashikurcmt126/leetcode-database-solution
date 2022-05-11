
-- create
CREATE TABLE triangle (
  x int,
  y int,
  z int
);



INSERT INTO triangle(x, y, z)
VALUES
	(13, 15, 30),
	(10, 20, 15);



select * from triangle;


select x, y, z, (
case when x+y > z and x+z > y and y+z > x 
then "Yes" 
when x=y and y=z then "Yes"
else 
"No"
end 
)as triangle

from triangle
