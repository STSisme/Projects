SELECT
        CustomerID,
        FirstName,
        LastName,
        TotalSpending
    FROM (
        SELECT
            c.CustomerID,
            c.FirstName,
            c.LastName,
            SUM(od.Quantity * od.UnitPrice * (1 - od.DiscountRate)) AS TotalSpending
        FROM
            Customers c
        JOIN
            Orders o ON c.CustomerID = o.CustomerID
        JOIN
            OrderDetails od ON o.OrderID = od.OrderID
        WHERE
            EXTRACT(MONTH FROM o.OrderDate) = 8
        GROUP BY
            c.CustomerID, c.FirstName, c.LastName
        ORDER BY
            TotalSpending DESC
    )
    WHERE ROWNUM = 1;