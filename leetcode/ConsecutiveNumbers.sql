-- Consecutive Numbers

SELECT DISTINCT a.Num AS ConsecutiveNums FROM Logs a
    inner join Logs b ON (a.Id+1) = b.Id
    inner join Logs c ON (b.Id+1) = c.Id
    WHERE a.Id is not null AND a.Num = b.Num AND b.Num = c.Num
