-- Second Highest Salary

SELECT max(Salary) as SecondHighestSalary
    FROM (SELECT Salary,
          DENSE_RANK() over(ORDER BY Salary DESC) as rank FROM Employee) tmp
    WHERE rank = 2