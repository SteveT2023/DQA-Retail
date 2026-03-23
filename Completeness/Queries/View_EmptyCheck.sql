CREATE VIEW View_EmptyCheck AS

SELECT
	'Transaction ID' AS ColumnName,
	SUM(CASE WHEN TransactionID = "" THEN 1 ELSE 0 END) AS EmptyCounter
FROM retail_store_sales

UNION ALL

SELECT
	'Customer ID',
	SUM(CASE WHEN CustomerID = "" THEN 1 ELSE 0 END) 
FROM retail_store_sales

UNION ALL

SELECT
	'Category',
	SUM(CASE WHEN Category = "" THEN 1 ELSE 0 END)
FROM retail_store_sales

UNION ALL

SELECT
	'Item',
	SUM(CASE WHEN Item = "" THEN 1 ELSE 0 END)
FROM retail_store_sales

UNION ALL

SELECT
	'Price Per Unit',
	SUM(CASE WHEN PricePerUnit = "" THEN 1 ELSE 0 END)
FROM retail_store_sales

UNION ALL

SELECT
	'Quantity',
	SUM(CASE WHEN Quantity = "" THEN 1 ELSE 0 END)
FROM retail_store_sales

UNION ALL

SELECT
	'TotalSpent',
	SUM(CASE WHEN TotalSpent = "" THEN 1 ELSE 0 END)
FROM retail_store_sales

UNION ALL

SELECT
	'Payment Method',
	SUM(CASE WHEN PaymentMethod = "" THEN 1 ELSE 0 END)
FROM retail_store_sales

UNION ALL

SELECT
	'Location',
	SUM(CASE WHEN Location = "" THEN 1 ELSE 0 END)
FROM retail_store_sales

UNION ALL

SELECT
	'Transaction Date',
	SUM(CASE WHEN TransactionDate = "" THEN 1 ELSE 0 END)
FROM retail_store_sales

UNION ALL

SELECT
	'Discount Applied',
	SUM(CASE WHEN DiscountApplied = "" THEN 1 ELSE 0 END)
FROM retail_store_sales;
