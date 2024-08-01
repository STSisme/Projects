SELECT *
    FROM Orders
    WHERE TotalAmount >= (SELECT AVG(TotalAmount) FROM Orders);
