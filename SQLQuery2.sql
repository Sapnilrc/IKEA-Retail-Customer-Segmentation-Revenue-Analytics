SELECT COUNT(*) AS Missing_CustomerID
FROM dbo.RetailCombined WHERE Customer_ID IS NULL;

SELECT COUNT(*) AS Negative_Qty
FROM dbo.RetailCombined WHERE Quantity<=0;

SELECT COUNT(*) AS Missing_Description
FROM dbo.RetailCombined
WHERE Description is NULL;

SELECT Invoice,StockCode,Description,Quantity,InvoiceDate,Price,Customer_ID,Country,
		COUNT(*) AS ExactDupeCount
FROM dbo.RetailCombined
GROUP BY Invoice,StockCode,Description,Quantity,InvoiceDate,Price,Customer_ID,Country
HAVING COUNT(*)>1;