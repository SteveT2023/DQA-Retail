CREATE VIEW View_NullCheck AS

SELECT
	'Transaction ID' AS ColumnName,
	SUM(CASE WHEN TransactionID IS NULL THEN 1 ELSE 0 END) AS NullCounter
FROM retail_store_sales

UNION ALL

SELECT
	'Customer ID',
	SUM(CASE WHEN CustomerID IS NULL THEN 1 ELSE 0 END)
FROM retail_store_sales

UNION ALL

SELECT
	'Category',
	SUM(CASE WHEN Category IS NULL THEN 1 ELSE 0 END)
FROM retail_store_sales

UNION ALL

SELECT
	'Item',
	SUM(CASE WHEN Item IS NULL THEN 1 ELSE 0 END)
FROM retail_store_sales

UNION ALL

SELECT
	'Price Per Unit',
	SUM(CASE WHEN PricePerUnit IS NULL THEN 1 ELSE 0 END)
FROM retail_store_sales

UNION ALL

SELECT
	'Quantity',
	SUM(CASE WHEN Quantity IS NULL THEN 1 ELSE 0 END)
FROM retail_store_sales

UNION ALL

SELECT
	'Total Spent',
	SUM(CASE WHEN TotalSpent IS NULL THEN 1 ELSE 0 END)
FROM retail_store_sales

UNION ALL

SELECT
	'PaymentMethod',
	SUM(CASE WHEN PaymentMethod IS NULL THEN 1 ELSE 0 END)
FROM retail_store_sales

UNION ALL

SELECT
	'Location',
	SUM(CASE WHEN Location IS NULL THEN 1 ELSE 0 END)
FROM retail_store_sales

UNION ALL

SELECT
	'Transaction Date',
	SUM(CASE WHEN TransactionDate IS NULL THEN 1 ELSE 0 END)
FROM retail_store_sales

UNION ALL

SELECT
	'Discount Applied',
	SUM(CASE WHEN DiscountApplied IS NULL THEN 1 ELSE 0 END)
FROM retail_store_sales;
