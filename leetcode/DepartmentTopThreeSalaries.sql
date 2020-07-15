-- Department Top Three Salaries

select Department, Name as Employee, Salary 
    from 
        (select e.*, d.Name as Department, 
                dense_rank() over(partition by DepartmentId order by Salary Desc) as rank
            from employee e 
            join Department d 
            on e.DepartmentId = d.Id) as temp 
    where rank <=3
    order by DepartmentId, Salary  desc