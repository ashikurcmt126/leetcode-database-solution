select FirstName, Lastname, City, State from
Person p left join Address a on p.PersonId = a.PersionId
