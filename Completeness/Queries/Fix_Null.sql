-- Get the Price Per Unit by calculating TotalSpent/Quantity.
UPDATE retail_store_sales
SET PricePerUnit = TotalSpent/Quantity
WHERE PricePerUnit IS NULL;

-- Drop rows where the Quantity and TotalSpent is NULL.
DELETE FROM retail_store_sales
WHERE Quantity IS NULL AND TotalSpent IS NULL;
