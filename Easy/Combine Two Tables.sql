select p.firstName, p.lastName, a.city, a.state
FROM person as p 
left join address as a 
on a.personId = p.personId
