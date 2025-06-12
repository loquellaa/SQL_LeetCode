# Write your MySQL query statement below
select project_id
, round(sum(experience_years) / count(distinct e.employee_id),2) as average_years
from employee e 
join project p
on e.employee_id = p.employee_id
group by project_id
