SQL> SELECT * FROM CUSTOMERS WHERE CATEGORY = 'S';

CUSTOMERID FIRSTNAME  LASTNAME        ADDRESS         CATEG                     
---------- ---------- --------------- --------------- -----                     
         1 John       Giri            Jorpati         S                         
         6 Rojina     Budal           Maitighar       S                         
         8 Shreya     Gurung          Baneshwor       S                         

SQL> SELECT *
  2  FROM Orders o
  3  INNER JOIN OrderDetails od ON o.OrderID = od.OrderID
  4  WHERE od.ProductID = 101
  5    AND o.OrderDate BETWEEN TO_DATE('2023-05-01', 'YYYY-MM-DD') AND TO_DATE('2023-05-28', 'YYYY-MM-DD');

no rows selected

SQL> SELECT c.*, o.*, od.*
  2  FROM Customers c
  3  LEFT JOIN Orders o ON c.CustomerID = o.CustomerID
  4  LEFT JOIN OrderDetails od ON o.OrderID = od.OrderID;

CUSTOMERID FIRSTNAME  LASTNAME        ADDRESS         CATEG    ORDERID          
---------- ---------- --------------- --------------- ----- ----------          
CUSTOMERID ORDERDATE TOTALAMOUNT ORDERDETAILID    ORDERID  PRODUCTID   QUANTITY 
---------- --------- ----------- ------------- ---------- ---------- ---------- 
 UNITPRICE DISCOUNTRATE                                                         
---------- ------------                                                         
         1 John       Giri            Jorpati         S            201          
         1 16-JAN-23     1149.98           301        201        101          1 
    999.99          .05                                                         
                                                                                
         1 John       Giri            Jorpati         S            201          
         1 16-JAN-23     1149.98           302        201        104          1 
    149.99          .05                                                         

CUSTOMERID FIRSTNAME  LASTNAME        ADDRESS         CATEG    ORDERID          
---------- ---------- --------------- --------------- ----- ----------          
CUSTOMERID ORDERDATE TOTALAMOUNT ORDERDETAILID    ORDERID  PRODUCTID   QUANTITY 
---------- --------- ----------- ------------- ---------- ---------- ---------- 
 UNITPRICE DISCOUNTRATE                                                         
---------- ------------                                                         
                                                                                
         2 Ram        Thapa           Koteshwor       R            202          
         2 20-FEB-23      379.98           303        202        104          1 
    149.99            0                                                         
                                                                                
         2 Ram        Thapa           Koteshwor       R            202          
         2 20-FEB-23      379.98           304        202        105          1 

CUSTOMERID FIRSTNAME  LASTNAME        ADDRESS         CATEG    ORDERID          
---------- ---------- --------------- --------------- ----- ----------          
CUSTOMERID ORDERDATE TOTALAMOUNT ORDERDETAILID    ORDERID  PRODUCTID   QUANTITY 
---------- --------- ----------- ------------- ---------- ---------- ---------- 
 UNITPRICE DISCOUNTRATE                                                         
---------- ------------                                                         
    129.99            0                                                         
                                                                                
         2 Ram        Thapa           Koteshwor       R            202          
         2 20-FEB-23      379.98           305        202        106          1 
     99.99            0                                                         
                                                                                
         3 Ram        Tamang          Boudha          R            203          

CUSTOMERID FIRSTNAME  LASTNAME        ADDRESS         CATEG    ORDERID          
---------- ---------- --------------- --------------- ----- ----------          
CUSTOMERID ORDERDATE TOTALAMOUNT ORDERDETAILID    ORDERID  PRODUCTID   QUANTITY 
---------- --------- ----------- ------------- ---------- ---------- ---------- 
 UNITPRICE DISCOUNTRATE                                                         
---------- ------------                                                         
         3 25-MAR-23      449.97           306        203        104          3 
    149.99            0                                                         
                                                                                
         4 Hari       Shrestha        Bode            R            204          
         4 05-MAY-23      259.98           307        204        105          2 
    129.99            0                                                         
                                                                                

CUSTOMERID FIRSTNAME  LASTNAME        ADDRESS         CATEG    ORDERID          
---------- ---------- --------------- --------------- ----- ----------          
CUSTOMERID ORDERDATE TOTALAMOUNT ORDERDETAILID    ORDERID  PRODUCTID   QUANTITY 
---------- --------- ----------- ------------- ---------- ---------- ---------- 
 UNITPRICE DISCOUNTRATE                                                         
---------- ------------                                                         
         6 Rojina     Budal           Maitighar       S            205          
         6 30-MAY-23       99.98           308        205        107          2 
     49.99            0                                                         
                                                                                
         6 Rojina     Budal           Maitighar       S            206          
         6 20-JUN-23      999.99           309        206        101          1 
    999.99          .05                                                         

CUSTOMERID FIRSTNAME  LASTNAME        ADDRESS         CATEG    ORDERID          
---------- ---------- --------------- --------------- ----- ----------          
CUSTOMERID ORDERDATE TOTALAMOUNT ORDERDETAILID    ORDERID  PRODUCTID   QUANTITY 
---------- --------- ----------- ------------- ---------- ---------- ---------- 
 UNITPRICE DISCOUNTRATE                                                         
---------- ------------                                                         
                                                                                
         7 Arjun      Shrestha        Bode            V            207          
         7 05-JUL-23     2449.99           310        207        108          1 
   2449.99           .1                                                         
                                                                                
         7 Arjun      Shrestha        Bode            V            208          
         7 25-JUL-23       99.99           311        208        106          1 

CUSTOMERID FIRSTNAME  LASTNAME        ADDRESS         CATEG    ORDERID          
---------- ---------- --------------- --------------- ----- ----------          
CUSTOMERID ORDERDATE TOTALAMOUNT ORDERDETAILID    ORDERID  PRODUCTID   QUANTITY 
---------- --------- ----------- ------------- ---------- ---------- ---------- 
 UNITPRICE DISCOUNTRATE                                                         
---------- ------------                                                         
     99.99           .1                                                         
                                                                                
         7 Arjun      Shrestha        Bode            V            209          
         7 30-JUL-23     1299.99           312        209        103          1 
   1299.99           .1                                                         
                                                                                
         8 Shreya     Gurung          Baneshwor       S                         

CUSTOMERID FIRSTNAME  LASTNAME        ADDRESS         CATEG    ORDERID          
---------- ---------- --------------- --------------- ----- ----------          
CUSTOMERID ORDERDATE TOTALAMOUNT ORDERDETAILID    ORDERID  PRODUCTID   QUANTITY 
---------- --------- ----------- ------------- ---------- ---------- ---------- 
 UNITPRICE DISCOUNTRATE                                                         
---------- ------------                                                         
                                                                                
                                                                                
                                                                                
         5 Sita       Budha           Thimi           R                         
                                                                                
                                                                                
                                                                                

14 rows selected.

SQL> SELECT *
  2  FROM Products
  3  WHERE SUBSTR(ProductName, 2, 1) = 'a'
  4    AND StockLevel > 50;

no rows selected

SQL> SELECT c.*, o.OrderDate
  2  FROM Customers c
  3  JOIN Orders o ON c.CustomerID = o.CustomerID
  4  WHERE ROWNUM = 1
  5  ORDER BY o.OrderDate DESC;

CUSTOMERID FIRSTNAME  LASTNAME        ADDRESS         CATEG ORDERDATE           
---------- ---------- --------------- --------------- ----- ---------           
         1 John       Giri            Jorpati         S     16-JAN-23           

SQL> SELECT
  2      TO_CHAR(OrderDate, 'YYYY-MM') AS Month,
  3      SUM(TotalAmount) AS TotalRevenue
  4  FROM Orders
  5  GROUP BY TO_CHAR(OrderDate, 'YYYY-MM');

MONTH   TOTALREVENUE                                                            
------- ------------                                                            
2023-05       359.96                                                            
2023-07      3849.97                                                            
2023-01      1149.98                                                            
2023-02       379.98                                                            
2023-03       449.97                                                            
2023-06       999.99                                                            

6 rows selected.

SQL> SELECT *
  2  FROM Orders
  3  WHERE TotalAmount >= (SELECT AVG(TotalAmount) FROM Orders);

   ORDERID CUSTOMERID ORDERDATE TOTALAMOUNT                                     
---------- ---------- --------- -----------                                     
       201          1 16-JAN-23     1149.98                                     
       206          6 20-JUN-23      999.99                                     
       207          7 05-JUL-23     2449.99                                     
       209          7 30-JUL-23     1299.99                                     

SQL> SELECT v.VendorID, v.VendorName, v.ContactInfo, COUNT(p.ProductID) AS ProductCount
  2  FROM Vendors v
  3  JOIN Products p ON v.VendorID = p.VendorID
  4  GROUP BY v.VendorID, v.VendorName, v.ContactInfo
  5  HAVING COUNT(p.ProductID) > 3;

  VENDORID VENDORNAME                CONTACTINF PRODUCTCOUNT                    
---------- ------------------------- ---------- ------------                    
         1 TechCo                    9818346589            4                    

SQL> SELECT
  2      ProductID, ProductName, Description, Price, StockLevel, VendorID, CategoryID,
  3      TotalOrdered
  4  FROM (
  5      SELECT
  6          p.ProductID, p.ProductName, p.Description, p.Price, p.StockLevel, p.VendorID, p.CategoryID,
  7          SUM(od.Quantity) AS TotalOrdered
  8      FROM
  9          Products p
 10      JOIN
 11          OrderDetails od ON p.ProductID = od.ProductID
 12      GROUP BY
 13          p.ProductID, p.ProductName, p.Description, p.Price, p.StockLevel, p.VendorID, p.CategoryID
 14      ORDER BY
 15          TotalOrdered DESC
 16  )
 17  WHERE ROWNUM <= 3;

 PRODUCTID PRODUCTNAME               DESCRIPTION                         PRICE  
---------- ------------------------- ------------------------------ ----------  
STOCKLEVEL   VENDORID CATEGORYID TOTALORDERED                                   
---------- ---------- ---------- ------------                                   
       104 AirPods Pro               Wireless earbuds                   149.99  
       100          1          3            5                                   
                                                                                
       105 Fitbit Charge 5           Fitness tracker                    129.99  
        40          2          4            3                                   
                                                                                
       106 Logitech MX Master 3      Wireless mouse                      99.99  
        25          3          4            2                                   
                                                                                

SQL> SELECT
  2      CustomerID,
  3      FirstName,
  4      LastName,
  5      TotalSpending
  6  FROM (
  7      SELECT
  8          c.CustomerID,
  9          c.FirstName,
 10          c.LastName,
 11          SUM(od.Quantity * od.UnitPrice * (1 - od.DiscountRate)) AS TotalSpending
 12      FROM
 13          Customers c
 14      JOIN
 15          Orders o ON c.CustomerID = o.CustomerID
 16      JOIN
 17          OrderDetails od ON o.OrderID = od.OrderID
 18      WHERE
 19          EXTRACT(MONTH FROM o.OrderDate) = 8
 20      GROUP BY
 21          c.CustomerID, c.FirstName, c.LastName
 22      ORDER BY
 23          TotalSpending DESC
 24  )
 25  WHERE ROWNUM = 1;

no rows selected

SQL> SPOOL OFF
