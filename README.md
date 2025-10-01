# Sales-Analysis-and-Profitability-Dashboard
---

## Project Overview
- **Project Title:** Sales Analysis and Profitability Dashboard - Power BI
- **Project Description:** I analyzed a year of retail transactions to answer the business questions: where is revenue coming from, why are margins negative, and what practical steps will improve profitability? Using SQL, Excel, and Power BI, I built a report that uncovers key findings, then translated those findings into actionable recommendations.
- **Business Objectives**
  1. Identify top-performing products, regions, and sales representatives.
  2. Evaluate revenue, profit margin, and Average Order Value (AOV) trends.
  3. Detect underperforming products and regions for strategic improvement.
  4. Provide real-time, interactive reporting for better decision-making.

## Tools Used
- **Excel:** for data cleaning, formatting, and preliminary analysis.
- **SQL:** Data querying and exploration.
- **Power BI:** DAX measures, interactive dashboards and data visualization, drill-through reports.

## Data Source 
Kaggle - CSV sales dataset by Vinoth Kanna S.

## Data Cleaning and Preparation
  - Loaded the dataset and inspected its structure for nulls, duplicates, data type, outliers, and inconsistencies. I discovered the dataset is for the 2023 sales year but had three entries for 2024. I deleted the three 2024 entries to give a more accurate analysis result for the 2023 sales year. See the SQL query here
  - Renamed monetory columns: Unit_Cost and Unit_Price to reflect currency for clearer insight into the monetory context. I used Nigerian Naira (NGN) as the currency for this analysis. See the SQL Query here
  - For more efficient analysis, I created the Revenue, Cost, Profit, Order_Month columns. See the SQL query here

## Exploratory Data Analysis
- **Univariate Analysis:** calculated the key KPIs - Total Quantity, Total Revenue, Total Cost, Total Profit, AOV, Profit Margin (%), Average Margin (%). See the SQL query here
- **Time-based Analysis:** analysed the KPIs by month. See the SQL query here
- **Product Analysis:** explored the performance of the various products and product categories. See the SQL query here
- **Regional Analysis:** explored the regional contribution to sales. See the SQL query here
- **Channel analysis:** analysed the KPIs by channel. See the SQL query here

## Visualization
Below is the dashboard showing the trends


## Insights
- Giving discounts reduced revenue by N10.47 and turned what could have been a profit (

## Recommendations
