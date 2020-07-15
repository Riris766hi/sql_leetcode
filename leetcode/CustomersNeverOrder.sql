-- Customers Who Never Order

SELECT Name as Customers FROM Customers 
    WHERE NOT EXISTS (SELECT CustomerId from Orders
        WHERE Customers.Id = Orders.CustomerId)
        
  