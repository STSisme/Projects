SELECT
        TO_CHAR(OrderDate, 'YYYY-MM') AS Month,
        SUM(TotalAmount) AS TotalRevenue
    FROM Orders
    GROUP BY TO_CHAR(OrderDate, 'YYYY-MM');
