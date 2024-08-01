SELECT
        ProductID, ProductName, Description, Price, StockLevel, VendorID, CategoryID,
        TotalOrdered
    FROM (
        SELECT
            p.ProductID, p.ProductName, p.Description, p.Price, p.StockLevel, p.VendorID, p.CategoryID,
            SUM(od.Quantity) AS TotalOrdered
        FROM
            Products p
        JOIN
            OrderDetails od ON p.ProductID = od.ProductID
        GROUP BY
            p.ProductID, p.ProductName, p.Description, p.Price, p.StockLevel, p.VendorID, p.CategoryID
        ORDER BY
            TotalOrdered DESC
    )
    WHERE ROWNUM <= 3;