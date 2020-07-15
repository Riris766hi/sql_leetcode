-- Nth Highest Salary

CREATE FUNCTION getNthHighestSalary(@N INT) RETURNS INT AS
BEGIN
    RETURN (
     SELECT TOP 1 Salary FROM 
        (SELECT Salary,
            DENSE_RANK() OVER(ORDER BY Salary DESC) as rank
            FROM Employee) tmp
        WHERE rank = @N
    );
END
