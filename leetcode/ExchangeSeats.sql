--  Exchange Seats

SELECT 
    CASE 
        WHEN((SELECT MAX(id) FROM seat )%2 =1)
        AND id = (SELECT MAX(id) FROM seat) then id
        WHEN id % 2 = 0 then id -1
        ELSE id + 1
    END AS id , student
    FROM seat
    ORDER BY id
    