-- Department Highest Salary

SELECT d.Name as Department, e.Name as Employee, e.Salary
    FROM (SELECT DepartmentId, Max(Salary) AS max_salary FROM Employee 
            GROUP  BY DepartmentId) AS Temp
    JOIN Employee e ON e.DepartmentId = Temp.DepartmentId
    AND  e.Salary = Temp.max_salary
    JOIN Department d ON e.DepartmentId = d.Id
    