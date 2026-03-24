/* All other columns beside TransactionID can be duplicates and are valid. 
The code below checks if TransactionID occured twice which it didn't. 
Meaning, this table is clean and unique.
*/

SELECT
	TransactionID,
	COUNT(*) AS DuplicateCounter
FROM retail_store_sales
GROUP BY TransactionID 
HAVING DuplicateCounter > 1
