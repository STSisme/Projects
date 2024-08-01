SELECT c.*, o.OrderDate
    FROM Customers c
    JOIN Orders o ON c.CustomerID = o.CustomerID
    WHERE ROWNUM = 1
    ORDER BY o.OrderDate DESC;