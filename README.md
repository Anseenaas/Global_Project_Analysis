# Global Project Analysis

## Project Overview

This end-to-end data analytics project analyzes project cost, workforce characteristics, company performance indicators, and violation risk to identify meaningful patterns that can support data-driven decision-making.

The project demonstrates a complete analytics workflow using **Python, SQL, and Power BI**, covering data inspection, data quality validation, exploratory data analysis (EDA), correlation analysis, KPI development, business-focused analysis, and interactive dashboard visualization.

A key aspect of this project was working with a **large dataset containing approximately 1 million records**, which provided an opportunity to analyze project and workforce patterns at scale.

---

## Business Objectives

The analysis focuses on answering the following questions:

- How are Years of Experience and Certificates associated with Project Cost?
- How does Company PCAB Score relate to Project Cost?
- Which factors are associated with Violation Risk?
- How do Certificates and Years of Experience relate to Violation Risk?
- How does Company PCAB Score relate to Violation Risk?
- What workforce characteristics are associated with different Salary Brackets?

---

## Tools & Technologies

- **Python** — Pandas, NumPy, Matplotlib
- **SQL / MySQL** — Data validation, aggregation, grouping, and business analysis
- **Power BI** — KPI development, interactive dashboard creation, and data visualization
- **Google Colab** — Python analysis environment

---

## Dataset

The original dataset used for this project contains approximately **1 million records** and was used for the primary **Python and Power BI analysis**.

Because the original CSV file is too large to upload directly to GitHub, the complete dataset is not included in this repository.

Instead, a **10,000-row sample dataset** named `Global_Project_Analysis_Sample.csv` is included to provide a reference to the dataset structure and variables used in the analysis.

> **Important Dataset Note:** The 10,000-row CSV included in this repository is a sample created specifically for GitHub and portfolio purposes. The Python analysis, analytical results, key insights, and Power BI dashboard were developed using the original dataset of approximately **1 million records**, not the 10,000-row sample.

The **SQL analysis was performed separately on a 4,940-row subset** of the dataset. This subset was used to demonstrate SQL-based data validation, aggregation, grouping, and business analysis.

---

## Analysis Workflow

### 1. Data Loading & Inspection

The dataset was loaded into Python and initially inspected to understand its overall structure.

The inspection included:

- Dataset dimensions
- Column names
- Data types
- Summary statistics
- General structure of the dataset

---

### 2. Data Cleaning & Quality Checks

Data-quality checks were performed before beginning the main analysis.

The checks included:

- Missing-value detection
- Duplicate-record detection
- Data-type verification
- General data consistency checks

SQL quality checks were also performed on the SQL subset.

No missing values were identified in the key analytical fields checked, and no duplicate Project IDs were identified in the SQL subset.

---

### 3. Exploratory Data Analysis (EDA)

Python was used to explore the distributions and relationships of important variables.

The EDA included:

- Project Cost distribution
- Certificate distribution
- Project Cost by Certificates
- Project Cost by Years of Experience
- Project Cost by Company PCAB Score
- Violation Risk distribution
- Project Cost vs Violation Risk
- Company PCAB Score vs Project Cost
- Violation Risk relationships with workforce and company characteristics

Visualizations were created using **Matplotlib** to support interpretation of the analytical results.

---

### 4. Correlation Analysis

Correlation analysis was performed to identify numerical variables associated with **Project Cost** and **Violation Risk Index**.

Important variables investigated included:

- Certificates
- Years of Experience
- Company PCAB Score
- Salary Bracket
- Project Cost
- Violation Risk Index
- Weekly Overtime Hours
- Age

The correlation analysis was used to guide the more detailed business analysis of Project Cost and Violation Risk.

---

### 5. Project Cost Analysis

Detailed analysis was performed to understand the factors associated with Project Cost.

The analysis examined Project Cost in relation to:

- Number of Certificates
- Years of Experience
- Company PCAB Score
- Violation Risk Index

The results showed that several relationships followed **threshold patterns rather than perfectly linear increases**.

---

### 6. Violation Risk Analysis

Violation Risk Index was analyzed against several workforce and project characteristics.

The analysis included:

- Certificates vs Violation Risk
- Years of Experience vs Violation Risk
- Company PCAB Score vs Violation Risk
- Weekly Overtime Hours vs Violation Risk
- Project Cost vs Violation Risk

This analysis helped identify the factors most strongly associated with changes in project violation risk.

---

## SQL Analysis

SQL was used to complement the Python analysis and demonstrate business-focused querying.

The SQL analysis included:

- Dataset overview
- Summary statistics
- Missing-value validation
- Duplicate Project ID validation
- Salary Bracket distribution
- Average Project Cost by Years of Experience
- Average Project Cost by Certificates
- Average Project Cost by Company PCAB Score
- Average Violation Risk by Certificates
- Average Violation Risk by Years of Experience
- Average Violation Risk by Company PCAB Score
- Workforce profile by Salary Bracket

The SQL analysis was performed on a **4,940-row subset** of the original dataset.

---

## KPI Analysis

Key performance indicators were calculated to summarize overall project and workforce characteristics.

The KPI analysis included metrics related to:

- Total Projects
- Project Cost
- Average Violation Risk
- Certificates
- Years of Experience

These KPIs were subsequently used to support the Power BI dashboard.

---

## Key Insights

- **Project Cost** showed strong positive associations with **Certificates, Years of Experience, and Company PCAB Score**.

- Higher experience levels were generally associated with higher-value projects.

- The Experience–Project Cost relationship showed a noticeable threshold around the mid-experience range rather than a perfectly linear increase.

- Higher certification levels were generally associated with higher Project Cost.

- The relationship between Certificates and Project Cost also showed a **threshold pattern**, with substantial increases appearing after the mid-certificate range.

- Higher **Company PCAB Scores** were associated with higher Project Cost.

- **Violation Risk Index** showed a strong negative association with Project Cost.

- Higher numbers of Certificates were generally associated with **lower Violation Risk**.

- Greater Years of Experience were generally associated with lower Violation Risk.

- Higher Company PCAB Scores were associated with lower Violation Risk.

- Weekly Overtime Hours showed a positive association with Violation Risk, although this relationship was weaker than the major project and workforce factors.

- Salary Bracket analysis showed that higher salary brackets were generally associated with greater experience, more certifications, and higher Company PCAB Scores.

- Overall, the analysis indicates that workforce experience, professional certifications, and company performance indicators are important factors associated with project value and violation risk.

> **Note:** These findings describe associations observed within the dataset and should not be interpreted as evidence of causation.

---

## Power BI Dashboard

The final stage of the project involved developing an interactive **Power BI dashboard** to communicate the most important analytical findings.

The dashboard combines KPI cards, interactive filters, and focused visualizations to provide a concise view of project cost drivers and violation risk patterns.

### Dashboard Preview

![Global Project Analysis Dashboard](Global_Project_Analysis_dashboard.png)
---

## Dashboard Features

The dashboard includes:

- **5 KPI cards** summarizing important project metrics
- Interactive slicers for filtering the analysis
- Project Cost analysis by Years of Experience
- Project Cost analysis by Certificates
- Project Cost and Violation Risk analysis
- Certificates and Violation Risk analysis

The dashboard was intentionally designed as a focused **single-page report** to communicate the most important insights without overcrowding the visualization.

---

## Repository Contents

| File | Description |
|---|---|
| `Global_Project_Analysis.ipynb` | Python data inspection, EDA, correlation analysis, KPI calculations, visualizations, and business analysis |
| `Global_Project_Analysis.sql` | SQL data-quality checks, aggregations, and business analysis |
| `Global_Project_Analysis.pbix` | Interactive Power BI dashboard |
| `Global_Project_Analysis_dashboard.png` | Preview image of the completed Power BI dashboard |
| `Global_Project_Analysis_Sample.csv` | 10,000-row sample of the original ~1-million-row dataset for portfolio/reference purposes |

---

## Skills Demonstrated

- Python
- Pandas
- NumPy
- Matplotlib
- SQL
- MySQL
- Power BI
- Data Cleaning & Validation
- Exploratory Data Analysis
- Correlation Analysis
- Data Aggregation
- Data Visualization
- KPI Development
- Dashboard Development
- Business Analysis
- Business Insight Generation
- Large Dataset Analysis

---

## Conclusion

This project demonstrates an end-to-end data analytics workflow using **Python, SQL, and Power BI**.

Working with an original dataset of approximately **1 million records**, the project progressed from data inspection and quality validation through exploratory and correlation analysis, SQL-based business analysis, KPI development, and interactive dashboard creation.

The analysis identified meaningful associations between workforce characteristics, project value, company performance, and violation risk. Experience, certifications, and Company PCAB Score were associated with higher project costs and generally lower violation risk.

The completed project demonstrates the ability to work with large datasets, validate data quality, investigate business questions using Python and SQL, interpret analytical patterns, develop KPIs, and communicate findings through an interactive Power BI dashboard.
