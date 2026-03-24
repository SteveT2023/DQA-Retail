CREATE VIEW View_WhiteSpaceCheck AS

SELECT
	'Transaction ID' AS ColumnName,
	SUM(CASE WHEN TRIM(TransactionID) = "" AND TransactionID != "" THEN 1 ELSE 0 END) AS WhiteSpaceCounter
FROM retail_store_sales

UNION ALL

SELECT
	'Customer ID',
	SUM(CASE WHEN TRIM(CustomerID) = "" AND CustomerID != "" THEN 1 ELSE 0 END)
FROM retail_store_sales

UNION ALL

SELECT
	'Category',
	SUM(CASE WHEN TRIM(Category) = "" AND Category != "" THEN 1 ELSE 0 END)
FROM retail_store_sales

UNION ALL

SELECT
	'Item',
	SUM(CASE WHEN TRIM(Item) = "" AND Item != "" THEN 1 ELSE 0 END)
FROM retail_store_sales

UNION ALL

SELECT
	'Price Per Unit',
	SUM(CASE WHEN TRIM(PricePerUnit) = "" AND PricePerUnit != "" THEN 1 ELSE 0 END)
FROM retail_store_sales

UNION ALL

SELECT
	'Quantity',
	SUM(CASE WHEN TRIM(Quantity) = "" AND Quantity != "" THEN 1 ELSE 0 END)
FROM retail_store_sales

UNION ALL

SELECT
	'Total Spent',
	SUM(CASE WHEN TRIM(TotalSpent) = "" AND TotalSpent != "" THEN 1 ELSE 0 END)
FROM retail_store_sales

UNION ALL

SELECT
	'PaymentMethod',
	SUM(CASE WHEN TRIM(PaymentMethod) = "" AND PaymentMethod != "" THEN 1 ELSE 0 END)
FROM retail_store_sales

UNION ALL

SELECT
	'Location',
	SUM(CASE WHEN TRIM(Location) = "" AND Location != "" THEN 1 ELSE 0 END)
FROM retail_store_sales

UNION ALL

SELECT
	'Transaction Date',
	SUM(CASE WHEN TRIM(TransactionDate) = "" AND TransactionDate != "" THEN 1 ELSE 0 END)
FROM retail_store_sales

UNION ALL

SELECT
	'Discount Applied',
	SUM(CASE WHEN TRIM(DiscountApplied) = "" AND DiscountApplied != "" THEN 1 ELSE 0 END)
FROM retail_store_sales;
