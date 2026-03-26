-- Check for the oldest date and recent date.
SELECT
	MIN(TransactionDate) AS Oldest_Date,
	MAX(TransactionDate) AS Recent_Date
FROM retail_store_sales;

-- Check for missing dates.
SELECT 
	R.TransactionDate AS Retail_Date,
	D.Dates AS Date_Validation
FROM retail_store_sales R
RIGHT JOIN Date_Dimension D ON R.TransactionDate = D.Dates
WHERE R.TransactionDate IS NULL;
