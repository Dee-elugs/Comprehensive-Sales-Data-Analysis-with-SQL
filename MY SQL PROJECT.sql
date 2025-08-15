select * from Project;

-- SELECT Supplier_id, Supplier_city, supplier_phone 
-- FROM Project 
-- WHERE supplier_country = 'UK';

-- SELECT CONCAT(first_name, ' ', last_name) AS full_name, Customer_city
-- FROM Project;

-- SELECT Customer_id, First_name, Last_name, Customer_city, Customer_COUNTRY
-- FROM Project
-- WHERE Customer_country = 'Sweden' 

-- SELECT Contact_name,Supplier_city, supplier_country
-- FROM Project 
-- ORDER BY Contact_name ASC

-- SELECT Order_id,Customer_id, Order_number, CONCAT(first_name, ' ', last_name) AS Full_name, Customer_city,
-- Customer_country, Product_name,Total_amount, Customer_phone
-- FROM Project;

-- SELECT Order_id, Order_number, Product_name, Quantity, Unit_price
-- FROM Project 
-- ORDER BY Order_number

-- SELECT product_name, 
-- CASE 
-- WHEN quantity = 0 THEN 'Not Available'
-- ELSE 'Available'
-- END AS availability
-- FROM Project;

-- SELECT Product_name, Package   
-- FROM Project
-- WHERE Package LIKE '%bottle%';

-- SELECT Product_name, unit_price, Package
-- FROM Project
-- WHERE Product_name LIKE 'G%';

-- SELECT Supplier_id, COUNT(DISTINCT Product_id) AS Num_products
-- FROM Project
-- GROUP BY Supplier_id
-- ORDER BY Num_products DESC;

-- SELECT Customer_country, COUNT(DISTINCT customer_id) AS Num_customers
-- FROM Project
-- GROUP BY Customer_country
-- ORDER BY Num_customers ASC;

-- SELECT Customer_id, SUM(DISTINCT Total_amount) AS Total_order_amount
-- From Project
-- GROUP BY Customer_id
-- ORDER BY Total_order_amount ASC;

-- SELECT Supplier_country, COUNT(DISTINCT Supplier_id) AS Num_suppliers
-- FROM Project
-- GROUP BY Supplier_country
-- HAVING COUNT(DISTINCT Supplier_id) > 3;

-- SELECT Customer_country, COUNT(DISTINCT Customer_id) AS Num_customers
-- FROM Project
-- GROUP BY Customer_country
-- HAVING COUNT(DISTINCT Customer_id) > 7;

-- SELECT Customer_country, COUNT(DISTINCT Customer_id) AS Num_customers
-- FROM Project
-- WHERE Customer_country != 'Germany'
-- GROUP BY Customer_country
-- HAVING COUNT(DISTINCT Customer_id) >= 9
-- ORDER BY Num_customers DESC;

-- ALTER TABLE Project
-- ALTER COLUMN Total_amount TYPE TEXT;

-- UPDATE Project
-- SET Total_amount = TO_CHAR(Total_amount::NUMERIC, '$999,999.99');


-- UPDATE Project
-- SET Total_amount = REGEXP_REPLACE(Total_amount, '[^0-9.]', '', 'g');

-- ALTER TABLE Project
-- ALTER COLUMN Total_amount TYPE NUMERIC(12, 2) USING Total_amount::NUMERIC;

-- SELECT Customer_id, ROUND(AVG(total_amount), 0) AS Avg_order_amount
-- FROM Project
-- GROUP BY Customer_id
-- HAVING ROUND(AVG(total_amount), 0) BETWEEN 1000 AND 1200;

-- SELECT COUNT(Order_id) AS Num_orders, SUM(Total_amount) AS Total_sales
-- FROM Project
-- WHERE Order_date BETWEEN '2013-01-01' AND '2013-12-31';

