-- Making sure that the PricePerUnit x Quantity = TotalSpent is accurate.
SELECT
	TotalSpent,
	PricePerUnit * Quantity AS True_Total
FROM retail_store_sales
WHERE TotalSpent != PricePerUnit * Quantity;
