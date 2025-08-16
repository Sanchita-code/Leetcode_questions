select p.firstname, p.lastname, a.city, a.state
from Person p
LEFT JOIN Address a on  p.personId = a.personId;
