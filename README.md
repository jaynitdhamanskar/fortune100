# Fortune 100 Companies – Data Analytics Project

## Overview

This project showcases an end-to-end data analytics workflow applied to **Fortune 100 companies**. The goal is to analyze company-level financial and operational data to uncover revenue trends, industry contributions, geographic distribution, and growth patterns. The project demonstrates practical skills across Python, SQL, Power BI, and business reporting, following a structure commonly used in real-world analytics teams.

---

## Dataset

The dataset includes information on Fortune 100 companies such as:

* Company name
* Industry
* Total revenue
* Revenue growth
* Employee count
* Headquarters state (USA)

The data supports both exploratory analysis and executive-level business intelligence reporting.

---

## Tools & Technologies

* **Python:** Data loading, cleaning, and exploratory data analysis (EDA)

  * Libraries: Pandas, NumPy, Matplotlib, Seaborn
* **PostgreSQL (SQL):** Structured querying, aggregations, and KPI validation
* **Power BI:** Interactive dashboard and data visualization
* **Gamma:** Presentation (PPT) creation for storytelling and stakeholder communication
* **Jupyter Notebook:** Analysis and documentation

---

## Project Steps

### 1. Data Loading

* Loaded raw Fortune 100 data into Python using Pandas
* Reviewed schema, data types, and basic data quality issues

### 2. Exploratory Data Analysis (EDA)

* Analyzed revenue distribution across companies and industries
* Explored relationships between revenue, growth rate, and employee count
* Identified top-performing companies by revenue
* Reviewed geographic distribution of company headquarters

### 3. Data Cleaning & Preparation

* Handled missing or inconsistent values
* Standardized industry and state names
* Ensured numerical fields were properly formatted
* Prepared clean datasets for SQL analysis and Power BI consumption

### 4. SQL Analysis (PostgreSQL)

* Loaded cleaned data into a PostgreSQL database
* Executed SQL queries to:

  * Calculate total and average revenue by industry
  * Rank companies by revenue
  * Analyze revenue growth patterns
  * Validate KPIs used in the dashboard

### 5. Power BI Dashboard

* Built an interactive Power BI dashboard featuring:

  * Total revenue, total employees, average revenue growth, and company count
  * Top 10 Fortune 100 companies by revenue
  * Revenue contribution by industry
  * Revenue vs growth comparison by company
  * Geographic distribution of company headquarters by state
* Added slicers for industry and HQ state to enable interactive exploration

### 6. Reporting & Presentation

* Created a structured analytical report summarizing insights and business takeaways
* Developed an executive-style presentation (PPT) using Gamma
* Focused on clarity, visuals, and decision-oriented insights

---

## Dashboard

The Power BI dashboard provides a one-page executive view of the Fortune 100 landscape. It enables users to:

* Identify top revenue-generating companies
* Understand which industries contribute most to overall revenue
* Compare revenue and growth across companies
* Analyze geographic concentration of headquarters

---

## Key Results & Insights

* A small group of companies contributes a significant share of total revenue
* Financials, Healthcare, and Retail are among the top revenue-generating industries
* Revenue growth varies widely across companies, even within the same industry
* Fortune 100 headquarters are heavily concentrated in specific U.S. states

---

## How to Run the Project

1. **Clone the repository**

   ```bash
   git clone <repository-url>
   ```

2. **Install dependencies**

   ```bash
   pip install pandas numpy matplotlib seaborn sqlalchemy psycopg2
   ```

3. **Run the Jupyter Notebook**

   * Execute notebooks sequentially for EDA and data preparation

4. **Set up PostgreSQL**

   * Create a PostgreSQL database
   * Load the cleaned dataset
   * Run the provided SQL scripts

5. **Open Power BI Dashboard**

   * Open the `.pbix` file in Power BI Desktop
   * Refresh data sources if required

6. **Review Outputs**

   * Read the analytical report for detailed insights
   * Use the presentation for stakeholder discussions

---
