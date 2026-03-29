# 📊 Superstore Sales: SQL Business Intelligence Audit

## 🎯 Project Objective
The goal of this project was to transition from Excel-based reporting to a structured SQL environment to answer 5 critical business questions regarding profitability, seasonality, and regional performance.

## 🛠️ Tech Stack & Troubleshooting
* **Environment:** XAMPP (Apache & MySQL)
* **Editor:** Cursor AI
* **Key Challenge:** Resolved critical port conflicts (Port 80/443) and Windows permission "Access Denied" errors to successfully host the local database.
* **Data Pre-processing:** Cleaned and standardized the source CSV date formats to YYYY-MM-DD prior to ingestion, ensuring 100% data integrity and preventing "Null" or "0000-00-00" errors in MySQL.

## 🔍 Business Insights
1. **Top Performers:** Identified the Top 10 customers by revenue to prioritize for loyalty marketing.
2. **Profitability:** Discovered that **Office Supplies (Labels/Paper)** maintain a ~44% margin, significantly higher than Furniture.
3. **Seasonality:** Revenue peaks in Q4 (Nov/Dec), suggesting high holiday sensitivity.
4. **Regional Risk:** The **Central Region** showed declining sales/profitability due to aggressive discounting.

## 🚀 Skills Demonstrated
* **Aggregations:** SUM, AVG, COUNT(DISTINCT)
* **Filtering:** HAVING clause for aggregated results.
* **Date Formatting:** MONTHNAME() and YEAR() extractions.
* **Joins:** Self-joins for Year-over-Year growth analysis.
