-- Rising Temperature

SELECT w2.id 
    FROM weather w1, weather w2
    WHERE w2.Temperature > w1.Temperature
    AND DATEDIFF(DAY, w1.Recorddate, w2.Recorddate) = 1