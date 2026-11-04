# Steel Manufacturing Procurement Analytics

## Overview

This project analyzes procurement data from a steel manufacturing environment to identify purchasing trends, material costs, supplier patterns, and operational insights.

The goal is to take raw business data, clean and organize it, explore meaningful patterns, and turn the results into practical business recommendations.

The project includes data cleaning, exploratory analysis, visualizations, SQL analysis, key findings, and business recommendations.

---

## Business Objectives

This analysis focuses on questions such as:

- Which material categories account for the highest procurement spending?
- Which companies account for the greatest total spending?
- How does procurement spending vary across categories and suppliers?
- Which areas may present opportunities for cost control?
- Where is spending concentrated?
- What patterns could improve purchasing visibility and decision-making?

---

## Tools and Technologies

- Python
- pandas
- Jupyter Notebook
- Matplotlib
- Microsoft Excel
- SQL (SQLite)
- Git
- GitHub

### Possible extensions

- Power BI dashboard (not started)

---

## Dataset

The dataset contains procurement records from a steel manufacturing environment, including:

- Project ID
- Item Name
- Item Category
- Quantity
- Unit of Measure
- Unit Price
- Total Amount
- Material Weight
- Month
- Year
- Company
- City
- Country

---

## Project Workflow

- Import and inspect the raw dataset
- Clean and standardize the data
- Explore spending patterns across companies and item categories
- Create visualizations to communicate the results
- Run SQL analysis on spending by category, company, and time period
- Identify key findings
- Develop business recommendations

---

## Current Findings

- Raw Material had the highest total procurement spending at about $54,000.
- Mechanical was the second-highest spending category at about $46,000.
- Furnace Material followed at about $38,000.
- Foundry Port Sudan had the highest total company spending at about $58,000.
- Procurement spending was concentrated among a smaller number of companies and material categories.

---

## Business Recommendations

- Focus cost-saving efforts on Raw Material, Mechanical, and Furnace Material because they account for most of the spending.
- Review the highest-spending companies to identify opportunities for better pricing, volume discounts, or longer-term purchasing agreements.
- Track supplier concentration to reduce the risk of becoming too dependent on a small number of companies.
- Investigate differences in spending by reviewing purchase volume, unit cost, and order frequency.
- Create recurring reporting to monitor spending by company, category, and time period.

---

## Repository Contents

- `notebooks/manufacturing_materials_analysis.ipynb` — Data cleaning, exploration, visualizations, findings, and recommendations (executed with outputs)
- `data/raw/Global Furnace Requirments Dataset (1).csv` — Raw procurement dataset used for the analysis
- `procurement_clean.csv` — Cleaned and standardized dataset produced by the notebook
- `sql/procurement_analysis.sql` — Nine SQL queries: spending by category, company, raw material, top items, monthly trends, and averages
- `sql/procurement.db` — SQLite database (457 records) backing the SQL analysis

---

## Project Status

🟢 **Complete**

- [x] Dataset selected
- [x] Initial data cleaning
- [x] Exploratory data analysis
- [x] Initial visualizations
- [x] SQL analysis
- [x] Key findings
- [x] Business recommendations
- [x] Final business report (findings and recommendations documented above)

---

## About This Project

I selected this dataset because of my interest in manufacturing and supply-chain analytics. I currently work in a manufacturing environment, so I wanted my first portfolio project to focus on business data that reflects real operational and procurement decisions.

This project allows me to combine my professional experience with developing technical skills in data cleaning, analysis, visualization, and business decision-making.
