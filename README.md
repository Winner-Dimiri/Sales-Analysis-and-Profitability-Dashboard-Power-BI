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
  - Loaded the dataset and inspected its structure for nulls, duplicates, data type, outliers, and inconsistencies. I discovered the dataset is for the 2023 sales year but had three entries for 2024. I deleted the three 2024 entries to give a more accurate analysis result for the 2023 sales year. [See the SQL query here](https://github.com/Winner-Dimiri/Sales-Analysis-and-Profitability-Dashboard-Power-BI/blob/main/Analysis.sql#L1-L2)
  - Renamed monetory columns: Unit_Cost and Unit_Price to reflect currency for clearer insight into the monetory context. I used Nigerian Naira (NGN) as the currency for this analysis. [See the SQL Query here ](https://github.com/Winner-Dimiri/Sales-Analysis-and-Profitability-Dashboard-Power-BI/blob/main/Analysis.sql#L4-L6)
  - For more efficient analysis, I created the Revenue, Revenue without Discount, Cost, Profit, Profit without Discount, Order_Month columns. [See the SQL Query here ](https://github.com/Winner-Dimiri/Sales-Analysis-and-Profitability-Dashboard-Power-BI/blob/main/Analysis.sql#L8-L49)

## Exploratory Data Analysis
- **Univariate Analysis:** calculated the key KPIs - Total Quantity, Total Revenue, Total Revenue without Discount, Total Cost, Total Profit, Total profit without Discount, AOV, Profit Margin (%), Average Margin (%). [See the SQL query here](https://github.com/Winner-Dimiri/Sales-Analysis-and-Profitability-Dashboard-Power-BI/blob/main/Analysis.sql#L51-L83)
- **Time-based Analysis:** analysed the KPIs by month. [See the SQL query here](https://github.com/Winner-Dimiri/Sales-Analysis-and-Profitability-Dashboard-Power-BI/blob/main/Analysis.sql#L85-L97)
- **Product Analysis:** explored the performance of the top five products and the four product categories. [See the SQL query here]([https://github.com/Winner-Dimiri/Sales-Analysis-and-Profitability-Dashboard-Power-BI/blob/main/Analysis.sql#L99-L111](https://github.com/Winner-Dimiri/Sales-Analysis-and-Profitability-Dashboard-Power-BI/blob/main/Analysis.sql#L99-L124))
- **Regional Analysis:** explored the regional contribution to sales. [See the SQL query here](https://github.com/Winner-Dimiri/Sales-Analysis-and-Profitability-Dashboard-Power-BI/blob/main/Analysis.sql#L99-L124)
- **Channel analysis:** analysed the KPIs by channel. [See the SQL query here](https://github.com/Winner-Dimiri/Sales-Analysis-and-Profitability-Dashboard-Power-BI/blob/main/Analysis.sql#L140-L152)
- **Sales Rep Analysis:** analysis by sales rep. [See the SQL query here](https://github.com/Winner-Dimiri/Sales-Analysis-and-Profitability-Dashboard-Power-BI/blob/main/Analysis.sql#L154-L166)

## Visualization
This is the dashboard showing the trends
![Dashboard Screenshot](https://github.com/Winner-Dimiri/Sales-Analysis-and-Profitability-Dashboard-Power-BI/blob/main/Sales_Analysis_Dashboard.png)


## Insights
- Giving discounts reduced revenue by N10.47 and turned what could have been a profit (6.47M

## Recommendations
- Review the discount strategy - instead of broad discounts, use targeted offers to boost sales without wiping out profit.
- Capitalize on the strong AOV by introducing bundles, cross-sells, and premium options to grow revenue without heavy discounts.
- Optimize pricing for high-revenue categories and top products, since small adjustments here will impact overall profitability the most.
- Redesign sales incentives so sales reps are rewarded for profitable sales, not just high revenue numbers.
- Address seasonality by planning targeted campaigns during low-performing months (like September) and protecting peak months from unnecessary discounts.


