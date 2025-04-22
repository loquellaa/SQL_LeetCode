# Write your MySQL query statement below
select e.name
, bonus
from employee e
left join bonus b
on e.empID = b.empID
where bonus < 1000 or isnull(bonus)