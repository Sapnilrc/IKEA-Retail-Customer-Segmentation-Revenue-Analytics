SELECT COUNT(*) AS Total_Rows FROM dbo.RetailCombined
SELECT COUNT(*) AS Failed_Dates FROM dbo.RetailCombined WHERE InvoiceDate is NULL;
SELECT COUNT(*) AS Failed_Prices FROM dbo.RetailCombined WHERE Price is NULL;