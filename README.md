# Sales-Analysis-and-Profitability-Dashboard
---

## Contents
[Project Overview](#project-overview)

[Data Source](#data-source)

[Tools Used](#tools-used)

[Data Cleaning and Preparation](#data-cleaning-and-preparation)

[Visualization](#visualization)

[Insights](#insights)

[Recommendations](#recommendations)

## Project Overview
- **Project Title:** Sales Analysis and Profitability Dashboard
- **Project Description:** I analyzed a year of retail transactions to answer the business questions:
  1. Where is revenue coming from?
  2. Why are margins negative?
  3. What practical steps will improve profitability?

Using SQL, Excel, and Power BI, I built a report that uncovers key findings, then translated those findings into actionable recommendations.
- **Business Objectives**
  1. Identify top-performing products, regions, and sales representatives.
  2. Evaluate revenue, profit margin, and Average Order Value (AOV) trends.
  3. Detect underperforming products and regions for strategic improvement.
  4. Provide real-time, interactive reporting for better decision-making.

## Data Source 
Kaggle - CSV sales dataset by Vinoth Kanna S.

## Tools Used
- **Excel:** for data cleaning and formatting.
- **SQL:** Data querying and exploration.
- **Power BI:** DAX measures, interactive dashboards and data visualization, drill-through reports.


## Data Cleaning and Preparation
  - Loaded the dataset and inspected its structure for nulls, duplicates, data type, outliers, and inconsistencies. I discovered the dataset is for the 2023 sales year but had three entries for 2024. I removed the three 2024 entries from the dataset to give a more accurate analysis result for the 2023 sales year. [See the SQL query here](https://github.com/Winner-Dimiri/Sales-Analysis-and-Profitability-Dashboard-Power-BI/blob/main/Analysis.sql#L1-L2)
  - Renamed monetory columns: Unit_Cost and Unit_Price to reflect currency for clearer insight into the monetory context. I used Nigerian Naira (NGN) as the currency for this analysis. [See the SQL Query here ](https://github.com/Winner-Dimiri/Sales-Analysis-and-Profitability-Dashboard-Power-BI/blob/main/Analysis.sql#L4-L6)
  - For more efficient analysis, I created the Revenue, Revenue without Discount, Cost, Profit, Profit without Discount, Order_Month columns. [See the SQL Query here ](https://github.com/Winner-Dimiri/Sales-Analysis-and-Profitability-Dashboard-Power-BI/blob/main/Analysis.sql#L8-L49)

## Exploratory Data Analysis
- **Univariate Analysis:** calculated Key Performance Indicators (KPIs) - Total Quantity, Total Revenue, Total Revenue without Discount, Total Cost, Total Profit, Total profit without Discount, AOV, Profit Margin (%), Average Margin (%). [See the SQL query here](https://github.com/Winner-Dimiri/Sales-Analysis-and-Profitability-Dashboard-Power-BI/blob/main/Analysis.sql#L51-L83)
- **Time-based Analysis:** analysed the KPIs by month. [See the SQL query here](https://github.com/Winner-Dimiri/Sales-Analysis-and-Profitability-Dashboard-Power-BI/blob/main/Analysis.sql#L85-L97)
- **Product Analysis:** explored the performance of the top five products and the four product categories. [See the SQL query here](https://github.com/Winner-Dimiri/Sales-Analysis-and-Profitability-Dashboard-Power-BI/blob/main/Analysis.sql#L99-L124)
- **Regional Analysis:** explored the regional contribution to sales. [See the SQL query here](https://github.com/Winner-Dimiri/Sales-Analysis-and-Profitability-Dashboard-Power-BI/blob/main/Analysis.sql#L126-L138)
- **Channel analysis:** analysed the KPIs by channel. [See the SQL query here](https://github.com/Winner-Dimiri/Sales-Analysis-and-Profitability-Dashboard-Power-BI/blob/main/Analysis.sql#L140-L152)
- **Sales Rep Analysis:** analysis by sales rep. [See the SQL query here](https://github.com/Winner-Dimiri/Sales-Analysis-and-Profitability-Dashboard-Power-BI/blob/main/Analysis.sql#L154-L166)

## Visualization
This dashboard highlights key sales trends and performance insights.
![Dashboard Screenshot](https://github.com/Winner-Dimiri/Sales-Analysis-and-Profitability-Dashboard-Power-BI/blob/main/Sales_Analysis_Dashboard.png)


## Insights
- **Revenue Distribution**
  1. Total revenue of ₦59.64M is mainly driven by Clothing (₦16.4M), Furniture (₦15.4M), Electronics (₦15.1M), and Food (₦12.8M), together they contribute over 90% of total revenue.
  2. The North region slightly leads in performance (₦15.57M), with other regions; East, West, and South, maintaining close competition.
  3. Among sales representatives, David (₦13.7M) and Eva (₦12.9M) are top performers, while Charlie is the lowest (₦9.8M).
  4. Revenue concentration is high, the top 5 products alone account for ₦6.68M, while the lowest 5 generate less than ₦1.1M combined, revealing a clear imbalance in product performance.

- **Profitability Analysis**
  1. Despite strong revenue, profitability is negative with a –6.98% profit margin.
  2. Without discounts, profit would have been ₦6.47M instead of the current –₦4.16M, proving that discounts directly erased ₦10.6M in potential revenue.
  3. Average Order Value (₦59.82K) is strong, suggesting customers are willing to spend. The issue lies in over-discounting and weak cost control, not in customer demand.

- **Trend and Performance Insights**
  1. Monthly trend shows high sales in January (₦6.37M), August (₦5.72M), and October (₦5.68M), with a sharp decline in September (₦3.84M), indicating possible seasonal dips or campaign lapses.
  2. Underperforming products (IDs 1043, 1031, 1011, 1018, 1068) each generated below ₦250K, indicating a need for product and/or pricing review, or discontinuation.
  
## Recommendations
- **Improve Profit Margins**
  1. Reassess discount strategies, instead of broad discounts, use targeted offers to boost sales without wiping out profit.
  2. Capitalize on the strong AOV by introducing bundles, cross-sells, and premium options to grow revenue without heavy discounts.
  3. Redesign sales incentives so sales reps are rewarded for profitable sales, not just high revenue numbers.
  4. Negotiate supplier costs or bundle high-margin items with bestsellers to increase overall profitability.
  5. Address seasonality by planning targeted campaigns during low-performing months (like September) and protecting peak months from unnecessary discounts.

- **Optimize Product and Regional Strategy**
  1. Focus marketing and stock planning on top 20% of products driving 80% of revenue.
  2. Reevaluate or phase out underperforming products after analyzing customer demand and cost structure.
  3. Strengthen campaigns in high-revenue regions (North, East) while implementing targeted growth strategies in South and West to balance performance.

- **Enhance Data-Driven Decisions**
  1. Develop interactive dashboards for real-time tracking of revenue, discounts, profit margin, and AOV.
  2. Enable drill-through views so decision-makers can analyze results by product, region, and sales rep at a glance.
  3. Continuously monitor profitability with vs. without discounts to ensure transparent reporting and effective decision-making.
