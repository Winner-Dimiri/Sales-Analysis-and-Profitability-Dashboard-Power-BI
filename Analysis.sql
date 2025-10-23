--Deleting three rows from 2024
DELETE FROM sales_data WHERE YEAR(Sale_Date) = '2024'

--Renaming the Unit_Cost and Unit_Price columns to specify currency context
EXEC sp_rename 'sales_data.Unit_Cost', 'Unit_Cost_NGN', 'COLUMN'
EXEC sp_rename 'sales_data.Unit_Price', 'Unit_Price_NGN', 'COLUMN'

--Creating additional columns to aid analysis
---Creating the Revenue Column
ALTER TABLE sales_data
ADD Revenue_NGN FLOAT

UPDATE sales_data
SET Revenue_NGN = ROUND(Unit_Price_NGN * Quantity_Sold * (1-Discount),2)

--Creating the Revenue Without Discount Column
ALTER TABLE sales_data
ADD RevenueWD_NGN FLOAT

UPDATE sales_data
SET RevenueWD_NGN = ROUND(Unit_Price_NGN * Quantity_Sold,2)

---Creating the Cost Column
ALTER TABLE sales_data
ADD Cost_NGN FLOAT

UPDATE sales_data
SET Cost_NGN = ROUND((Unit_Cost_NGN * Quantity_Sold),2)

---Creating the Profit Column
ALTER TABLE sales_data
ADD Profit_NGN FLOAT

UPDATE sales_data
SET Profit_NGN = ROUND(Revenue_NGN - (Unit_Cost_NGN * Quantity_Sold),2)

--Adding the Profit Without Discount Column
ALTER TABLE sales_data
ADD ProfitWD_NGN FLOAT

UPDATE sales_data
SET ProfitWD_NGN = ROUND(RevenueWD_NGN - (Unit_Cost_NGN * Quantity_Sold),2)

---Creating the Order Month Column
ALTER TABLE sales_data
ADD Sales_Month INT

UPDATE sales_data
SET Sales_Month = Month(Sale_Date)

--Univariate Analysis
---Total Quantity
SELECT SUM(Quantity_Sold) AS Total_Quantity_Sold FROM sales_data

---Total Revenue with and without Discount
SELECT ROUND(SUM(Revenue_NGN),2) AS Total_Revenue FROM sales_data
SELECT ROUND(SUM(RevenuWD_NGN),2) AS Total_RevenueWD FROM sales_data

---Total Cost
SELECT ROUND(SUM(Cost_NGN),2) AS Total_Cost FROM sales_data

---Total Profit with and without Discount
SELECT ROUND(SUM(Profit_NGN),2) AS Total_Profit FROM sales_data
SELECT ROUND(SUM(ProfitWD_NGN),2) AS Total_ProfitWD FROM sales_data

---Calculating AOV 
SELECT ROUND(SUM(Revenue_NGN) / COUNT(Product_ID),2) AS AOV 
FROM sales_data

---Calculating Profit Margin (%)
SELECT ROUND((SUM(Profit_NGN) * 100 / SUM(Revenue_NGN)),2) AS Profit_Margin
FROM sales_data

---Calculating the Average Margin % (Across Products)
SELECT
	ROUND(AVG(ProductMargin),2) AS Avg_Margin_Percent
	FROM (
		SELECT 
			Product_ID,
			SUM(Profit_NGN) * 100 / SUM(Revenue_NGN) AS ProductMargin
		FROM sales_data
		GROUP BY Product_ID
	) AS MarginQuery

--Time Based Analysis
SELECT 
	Sales_Month, 
	SUM(Quantity_Sold) AS Quantity_Sold, 
	ROUND(SUM(Revenue_NGN),2) AS Total_Revenue_NGN, 
	ROUND(SUM(RevenueWD_NGN),2) AS Total_RevenueWD_NGN, 
	ROUND(AVG(Revenue_NGN),2) AS Average_Revenue_NGN,
	ROUND(SUM(Profit_NGN),2) AS Profit_NGN,
	ROUND(SUM(ProfitWD_NGN),2) AS ProfitWD_NGN
	SUM(Profit_NGN) * 100 / SUM(Revenue_NGN) AS MarginPercent
FROM sales_data
GROUP BY Sales_Month
Order BY Total_Revenue_NGN DESC

--Product Analysis
Select 
	TOP 5 Product_ID, 
	SUM(Quantity_Sold) AS Quantity_Sold, 
	ROUND(SUM(Revenue_NGN),2) AS Total_Revenue_NGN, 
	ROUND(SUM(RevenueWD_NGN),2) AS Total_RevenueWD_NGN, 
	ROUND(AVG(Revenue_NGN),2) AS Average_Revenue_NGN,
	ROUND(SUM(Profit_NGN),2) AS Profit_NGN,
	ROUND(SUM(ProfitWD_NGN),2) AS ProfitWD_NGN
	SUM(Profit_NGN) * 100 / SUM(Revenue_NGN) AS MarginPercent
FROM sales_data
Group by Product_ID
Order By Total_Revenue_NGN Desc

--Product Category Analysis
Select Product_Category, 
	SUM(Quantity_Sold) AS Quantity_Sold, 
	ROUND(SUM(Revenue_NGN),2) AS Total_Revenue_NGN, 
	ROUND(SUM(RevenueWD_NGN),2) AS Total_Revenue_NGN, 
	ROUND(AVG(Revenue_NGN),2) AS Average_Revenue_NGN,
	ROUND(SUM(Profit_NGN),2) AS Profit_NGN,
	ROUND(SUM(ProfitWD_NGN),2) AS ProfitWD_NGN
	SUM(Profit_NGN) * 100 / SUM(Revenue_NGN) AS MarginPercent
FROM sales_data
Group by Product_Category
Order By Total_Revenue_NGN Desc

--Regional Analysis
SELECT 
	Region, 
	SUM(Quantity_Sold) AS Quantity_Sold, 
	ROUND(SUM(Revenue_NGN),2) AS Total_Revenue_NGN, 
	ROUND(SUM(RevenueWD_NGN),2) AS Total_Revenue_NGN, 
	ROUND(AVG(Revenue_NGN),2) AS Average_Revenue_NGN,
	ROUND(SUM(Profit_NGN),2) AS Profit_NGN,
	ROUND(SUM(ProfitWD_NGN),2) AS ProfitWD_NGN
	SUM(Profit_NGN) * 100 / SUM(Revenue_NGN) AS MarginPercent
FROM sales_data
GROUP BY Region
Order BY Total_Revenue_NGN DESC

--Channel Analysis
SELECT 
	Sales_Channel, 
	SUM(Quantity_Sold) AS Quantity_Sold, 
	ROUND(SUM(Revenue_NGN),2) AS Total_Revenue_NGN, 
	ROUND(SUM(RevenueWD_NGN),2) AS Total_Revenue_NGN, 
	ROUND(AVG(Revenue_NGN),2) AS Average_Revenue_NGN,
	ROUND(SUM(Profit_NGN),2) AS Profit_NGN,
	ROUND(SUM(ProfitWD_NGN),2) AS ProfitWD_NGN
	SUM(Profit_NGN) * 100 / SUM(Revenue_NGN) AS MarginPercent
FROM sales_data
GROUP BY Sales_Channel
Order BY Total_Revenue_NGN DESC

--Sales Rep Analysis
SELECT 
	Sales_Rep, 
	SUM(Quantity_Sold) AS Quantity_Sold, 
	ROUND(SUM(Revenue_NGN),2) AS Total_Revenue_NGN, 
	ROUND(SUM(RevenueWD_NGN),2) AS Total_Revenue_NGN, 
	ROUND(AVG(Revenue_NGN),2) AS Average_Revenue_NGN,
	ROUND(SUM(Profit_NGN),2) AS Profit_NGN,
	ROUND(SUM(ProfitWD_NGN),2) AS ProfitWD_NGN
	SUM(Profit_NGN) * 100 / SUM(Revenue_NGN) AS MarginPercent
FROM sales_data
GROUP BY Sales_Rep
Order BY Total_Revenue_NGN DESC

