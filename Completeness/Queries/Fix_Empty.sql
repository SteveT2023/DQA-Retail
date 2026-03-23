-- Replace empty cells in the Item column with NULL.
UPDATE retail_store_sales
SET Item = NULL
WHERE Item = "";

-- Replace empty cells in the DiscountApplied column with False.
UPDATE retail_store_sales
SET DiscountApplied = 'False'
WHERE DiscountApplied = "";
