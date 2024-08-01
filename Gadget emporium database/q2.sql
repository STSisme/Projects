SELECT *
   FROM Orders o
   INNER JOIN OrderDetails od ON o.OrderID = od.OrderID
   WHERE od.ProductID = 101
     AND o.OrderDate BETWEEN TO_DATE('2023-05-01', 'YYYY-MM-DD') AND TO_DATE('2023-05-28', 'YYYY-MM-DD');
