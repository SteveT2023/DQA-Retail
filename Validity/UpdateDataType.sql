-- Change TransactionDate datatype from VARCHAR(50) to DATE.
ALTER TABLE retail_store_sales
MODIFY COLUMN TransactionDate DATE NOT NULL;
