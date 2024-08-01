SELECT v.VendorID, v.VendorName, v.ContactInfo, COUNT(p.ProductID) AS ProductCount
    FROM Vendors v
    JOIN Products p ON v.VendorID = p.VendorID
    GROUP BY v.VendorID, v.VendorName, v.ContactInfo
    HAVING COUNT(p.ProductID) > 3;
