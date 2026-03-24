CREATE VIEW View_CategoryItemCheck AS

SELECT
	'Patisserie' AS Category,
	C.CategoryCount,
	I.ItemCount,
	N.NullCount,
	C.CategoryCount - I.ItemCount - N.NullCount AS TrueDifference
FROM 
(
	SELECT COUNT(*) AS CategoryCount
	FROM retail_store_sales
	WHERE Category = 'Patisserie'
) AS C,
(
	SELECT COUNT(*) AS ItemCount
	FROM retail_store_sales
	WHERE Item LIKE '%PAT'
) AS I,
(
	SELECT COUNT(*) AS NullCount
	FROM retail_store_sales
	WHERE Category = 'Patisserie' AND Item IS NULL
) AS N

UNION ALL

SELECT
	'Milk Products' AS Category,
	C.CategoryCount,
	I.ItemCount,
	N.NullCount,
	C.CategoryCount - I.ItemCount - N.NullCount AS TrueDifference
FROM 
(
	SELECT COUNT(*) AS CategoryCount
	FROM retail_store_sales
	WHERE Category = 'Milk Products'
) AS C,
(
	SELECT COUNT(*) AS ItemCount
	FROM retail_store_sales
	WHERE Item LIKE '%MILK'
) AS I,
(
	SELECT COUNT(*) AS NullCount
	FROM retail_store_sales
	WHERE Category = 'Milk Products' AND Item IS NULL
) AS N

UNION ALL

SELECT
	'Butchers' AS Category,
	C.CategoryCount,
	I.ItemCount,
	N.NullCount,
	C.CategoryCount - I.ItemCount - N.NullCount AS TrueDifference
FROM 
(
	SELECT COUNT(*) AS CategoryCount
	FROM retail_store_sales
	WHERE Category = 'Butchers'
) AS C,
(
	SELECT COUNT(*) AS ItemCount
	FROM retail_store_sales
	WHERE Item LIKE '%BUT'
) AS I,
(
	SELECT COUNT(*) AS NullCount
	FROM retail_store_sales
	WHERE Category = 'Butchers' AND Item IS NULL
) AS N

UNION ALL

SELECT
	'Beverages' AS Category,
	C.CategoryCount,
	I.ItemCount,
	N.NullCount,
	C.CategoryCount - I.ItemCount - N.NullCount AS TrueDifference
FROM 
(
	SELECT COUNT(*) AS CategoryCount
	FROM retail_store_sales
	WHERE Category = 'Beverages'
) AS C,
(
	SELECT COUNT(*) AS ItemCount
	FROM retail_store_sales
	WHERE Item LIKE '%BEV'
) AS I,
(
	SELECT COUNT(*) AS NullCount
	FROM retail_store_sales
	WHERE Category = 'Beverages' AND Item IS NULL
) AS N

UNION ALL

SELECT
	'Food' AS Category,
	C.CategoryCount,
	I.ItemCount,
	N.NullCount,
	C.CategoryCount - I.ItemCount - N.NullCount AS TrueDifference
FROM 
(
	SELECT COUNT(*) AS CategoryCount
	FROM retail_store_sales
	WHERE Category = 'Food'
) AS C,
(
	SELECT COUNT(*) AS ItemCount
	FROM retail_store_sales
	WHERE Item LIKE '%FOOD'
) AS I,
(
	SELECT COUNT(*) AS NullCount
	FROM retail_store_sales
	WHERE Category = 'Food' AND Item IS NULL
) AS N

UNION ALL

SELECT
	'Furniture' AS Category,
	C.CategoryCount,
	I.ItemCount,
	N.NullCount,
	C.CategoryCount - I.ItemCount - N.NullCount AS TrueDifference
FROM 
(
	SELECT COUNT(*) AS CategoryCount
	FROM retail_store_sales
	WHERE Category = 'Furniture'
) AS C,
(
	SELECT COUNT(*) AS ItemCount
	FROM retail_store_sales
	WHERE Item LIKE '%FUR'
) AS I,
(
	SELECT COUNT(*) AS NullCount
	FROM retail_store_sales
	WHERE Category = 'Furniture' AND Item IS NULL
) AS N

UNION ALL

SELECT
	'Electric Household Essentials' AS Category,
	C.CategoryCount,
	I.ItemCount,
	N.NullCount,
	C.CategoryCount - I.ItemCount - N.NullCount AS TrueDifference
FROM 
(
	SELECT COUNT(*) AS CategoryCount
	FROM retail_store_sales
	WHERE Category = 'Electric Household Essentials'
) AS C,
(
	SELECT COUNT(*) AS ItemCount
	FROM retail_store_sales
	WHERE Item LIKE '%EHE'
) AS I,
(
	SELECT COUNT(*) AS NullCount
	FROM retail_store_sales
	WHERE Category = 'Electric Household Essentials' AND Item IS NULL
) AS N

UNION ALL

SELECT
	'Computers and Electric Accessories' AS Category,
	C.CategoryCount,
	I.ItemCount,
	N.NullCount,
	C.CategoryCount - I.ItemCount - N.NullCount AS TrueDifference
FROM 
(
	SELECT COUNT(*) AS CategoryCount
	FROM retail_store_sales
	WHERE Category = 'Computers and Electric Accessories'
) AS C,
(
	SELECT COUNT(*) AS ItemCount
	FROM retail_store_sales
	WHERE Item LIKE '%CEA'
) AS I,
(
	SELECT COUNT(*) AS NullCount
	FROM retail_store_sales
	WHERE Category = 'Computers and Electric Accessories' AND Item IS NULL
) AS N
