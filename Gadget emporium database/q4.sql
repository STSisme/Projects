SELECT *
    FROM Products
    WHERE SUBSTR(ProductName, 2, 1) = 'a'
      AND StockLevel > 50;