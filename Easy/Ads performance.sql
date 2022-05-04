
-- create
CREATE TABLE Ads (
  ad_id int,
  user_id int,
  action varchar(20)
);

INSERT INTO Ads(ad_id, user_id, action)
VALUES
	(1, 1, "Clicked"),
	(2, 2, "Clicked"),
	(3, 3, "Viewed"),
	(5, 5, "Ignored"),
	(1, 7, "Ignored"),
	(2, 7, "Viewed"),
	(3, 5, "Clicked"),
	(1, 4, "Viewed"),
	(2, 11, "Viewed"),
	(1, 2, "Clicked");
	
	
SELECT * FROM Ads;

with t1 as(
   select ad_id, 
   sum(case when action in('Clicked') then 1 else 0 end) as clicked
   from Ads
   group by ad_id
),
t2 as(
   select ad_id as ad,
   sum(case when action in('Clicked', 'Viewed') then 1 else 0 end)as total
   from Ads
   group by ad_id
)
select a.ad_id,
coalesce(round((clicked+0.0)/nullif((total+0.0), 0)*100,2),0) as ctr
from(
select * 
from t1 join t2 on
t1.ad_id = t2.ad) a
order by ctr desc, ad_id
