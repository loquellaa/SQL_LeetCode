WITH CTE_1 as (SELECT managerID , COUNT(managerID) AS num_employees
FROM EMPLOYEE
GROUP BY managerid
having COUNT(managerID) >=5  )


SELECT name FROM CTE_1
inner JOIN EMPLOYEE

ON id = CTE_1.managerID