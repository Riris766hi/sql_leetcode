-- Employees Earning More Than Their Managers

SELECT e.name as Employee
    FROM Employee e
    inner join Employee m
    on e.ManagerId = m.Id
    AND e.Salary > m.Salary
