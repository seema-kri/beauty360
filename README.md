 
# 💄 BEAUTY 360° – Beauty Catalogue Intelligence

**An end-to-end beauty e-commerce analytics project using Python, PostgreSQL, and Power BI to analyse product catalogue performance, brand engagement, pricing strategy, and product availability.**

<p align="center">

  **Python** · **Pandas** · **NumPy** · **PostgreSQL** · **Power BI** · **DAX**

</p>

---

## 📌 Table of Contents

1. [Project Overview](#-project-overview)
2. [Business Problem](#-business-problem)
3. [Business Objectives](#-business-objectives)
4. [Dataset Description](#-dataset-description)
5. [Tools and Technologies](#-tools--technologies)
6. [Project Structure](#-project-structure)
7. [Data Cleaning and Preparation](#-data-cleaning--preparation)
8. [Exploratory Data Analysis](#-exploratory-data-analysis-eda)
9. [Key Business Insights](#-key-business-insights)
10. [Power BI Dashboard](#-power-bi-dashboard)
11. [Business Recommendations](#-business-recommendations)
12. [How to Run the Project](#-how-to-run-the-project)
13. [Limitations and Future Scope](#-limitations--future-scope)
14. [Project Documentation](#-project-documentation)
15. [Author](#-author)

---

## 🔍 Project Overview

BEAUTY 360° is an end-to-end data analytics project built around a Sephora beauty product catalogue dataset.

The project demonstrates how raw product data can be transformed into a structured analytical dataset and meaningful business insights using Python, PostgreSQL, and Power BI.

It follows a complete analytics workflow:

**Raw Data → Data Cleaning → EDA → Feature Engineering → SQL ETL → Validation → Power BI → Business Recommendations**

The analysis focuses on understanding catalogue composition, brand representation, pricing patterns, product availability, and customer engagement indicators.

This project is designed as a practical analytics case study relevant to beauty and personal-care e-commerce businesses such as Nykaa, Myntra, Mamaearth, and Swiss Beauty.

*Note: The underlying dataset belongs to Sephora. It is used as a case study and does not represent the internal data of these other retailers.*

---

## 🎯 Business Problem

Beauty e-commerce businesses manage thousands of products across multiple brands, categories, and price segments.

Without a structured analytical view, business teams may find it difficult to:

- Understand product distribution across categories.
- Identify brands attracting higher customer interest.
- Compare pricing across product categories and brands.
- Understand the distribution of budget, mid-range, and premium products.
- Identify categories with higher snapshot product unavailability.
- Explore the relationship between product ratings and engagement indicators.

**Business Goal:** Build a reliable catalogue intelligence solution that helps category managers, brand managers, and merchandising teams make better-informed assortment, pricing, and availability decisions.

---

## 🎯 Business Objectives

- Analyse product and brand distribution.
- Identify categories with the largest catalogue representation.
- Compare brand-level customer interest.
- Understand product pricing and price-segment distribution.
- Analyse product availability patterns.
- Evaluate product ratings, reviews, and loves.
- Build an interactive Power BI reporting solution.
- Validate analytical results between Python and PostgreSQL.

---

## 📂 Dataset Description

| Attribute | Details |
|---|---|
| Dataset | Sephora Product Catalogue |
| Raw data file | `product_info.csv` |
| Product records | 8,494 |
| Unique brands | 304 |
| Product categories | 9 |
| Product identifier | `product_id` |
| Currency | USD |
| Data type | Product catalogue snapshot |

### Dataset files

- `product_info.csv` – Source product catalogue data.
- `beauty_360_cleaned.xls` – Cleaned and feature-engineered dataset.

The dataset includes product-level information such as:

- Product and brand identifiers.
- Product categories.
- Product prices.
- Product ratings and reviews.
- Customer loves.
- Availability indicators.
- Online-only and Sephora-exclusive flags.
- Product variations and other catalogue attributes.

---

## 🛠 Tools & Technologies

| Technology | Purpose |
|---|---|
| Python | Data analysis and preprocessing |
| Pandas | Data manipulation and cleaning |
| NumPy | Numerical operations and feature engineering |
| Matplotlib | Exploratory visualisation |
| Seaborn | Statistical visualisation |
| PostgreSQL | Data staging, ETL, querying, and validation |
| Power BI | Interactive business dashboards |
| DAX | KPI calculations and analytical measures |
| Git & GitHub | Version control and project documentation |

---

## 🗂 Project Structure

```text
BEAUTY_360/
│
├── Assets/
│   ├── KPI Images
│   ├── Homepage.png
│   ├── template.png
│   └── Icons
│
├── Data/
│   ├── beauty_360_cleaned.xls
│   └── product_info.csv
│
├── Documentation/
│   ├── Business_Requirements_Document.pdf
│   └── Project_Report_BEAUTY_360.pdf
│
├── PowerBI/
│   ├── Dashboard.pbix
│   ├── Dashboard.pbit
│   ├── Dashboard.pdf
│   └── README.md
│
├── Python/
│   └── Product_Catalogue_Analysis.ipynb
│
├── SQL_ETL/
│   └── beauty360_etl.sql
│
├── Screenshots/
│   ├── Homepage.png
│   ├── Product & Brand Performance.png
│   ├── Pricing & Product Positioning.png
│   ├── Customer Engagement & Product Insights.png
│   └── README.md
│
├── .gitignore
├── LICENSE
├── README.md
└── requirements.txt
```

---

## 🧹 Data Cleaning & Preparation

Data cleaning and preprocessing were performed using Python and Pandas.

Key activities included:

- Examining dataset dimensions, data types, and column information.
- Identifying duplicate product records.
- Analysing missing values.
- Correcting data types.
- Checking product identifiers and data consistency.
- Identifying extreme values and price distributions.
- Documenting columns removed from the analysis dataset.
- Retaining relevant product attributes for further analysis.

### Important data decisions

| Column / Attribute | Decision | Reason |
|---|---|---|
| `variation_desc` | Dropped | Approximately 85% missing |
| `variation_type` | Retained | Useful product variation information |
| `variation_value` | Retained | Useful product variation information |
| `size` | Retained | Relevant for applicable products |
| `ingredients` | Retained in cleaned source | Useful product-level information, not required in final reporting table |
| `highlights` | Retained in cleaned source | Useful descriptive information, not required in final reporting table |
| Missing ratings | Retained as NULL/NaN | Missing feedback should not be interpreted as zero |

### Feature Engineering

The following analytical features were created:

- `price_segment` – Budget, Mid-Range, Premium.
- `availability_status` – In Stock / Out of Stock.
- `engagement_segment` – Product engagement groups based on loves.
- `feedback_status` – Feedback availability classification.
- `rating_band` – Not Rated, Below 4.0, Well Rated, Highly Rated.

**Price segmentation rules:**

| Segment | Price |
|---|---|
| Budget | ≤ $25 |
| Mid-Range | > $25 and ≤ $75 |
| Premium | > $75 |

These thresholds are analytical choices made for this project.

---

## 📊 Exploratory Data Analysis (EDA)

EDA was performed to understand the structure, quality, distribution, and relationships within the product catalogue.

Key analysis areas:

1. Product and brand distribution.
2. Category-level product representation.
3. Price distribution and extreme values.
4. Brand-level average price.
5. Customer loves and review distribution.
6. Product rating distribution.
7. Product availability patterns.
8. Relationship between price segments, ratings, and engagement.

Exploratory visualisations were used to identify patterns and support feature-engineering decisions.

---

## 💡 Key Business Insights

The following findings were identified from the current catalogue snapshot.

| Business Metric | Finding |
|---|---:|
| Total Products | 8,494 |
| Total Brands | 304 |
| Total Categories | 9 |
| Average Product Rating | 4.19 |
| Average Product Price | $51.66 |
| Median Product Price | $35.00 |
| Out-of-Stock Products | 626 |
| Out-of-Stock Rate | 7.37% |
| Online-Only Share | 21.91% |
| Sephora Exclusive Share | 27.94% |
| Premium Products | 1,422 |

### Additional findings

- Skincare and Makeup have the largest catalogue representation.
- Makeup has the highest average loves per product among the categories.
- Budget products show approximately 2.4 times the average loves of Premium products.
- Average product ratings decrease slightly across higher price segments in this snapshot.
- The average product rating is calculated using products with available ratings only.

**Interpretation:** Loves and reviews are customer-engagement indicators. They do not represent sales, revenue, or actual purchasing behaviour.

---

## 📈 Power BI Dashboard

The Power BI report contains a homepage and three analytical pages, designed using a black, pink, and white beauty-inspired theme.

### Homepage

Project navigation and an overview of the BEAUTY 360° analytics solution.

### Page 1 – Product & Brand Performance

**Business focus:** Understanding catalogue structure and brand representation.

Key analysis:
- Total products, brands, and categories.
- Products by category.
- Top 10 brands by average customer interest.
- Top 10 most-loved products.
- Out-of-stock rate by category.

![Product and Brand Performance](Screenshots/Product%20%26%20Brand%20Performance.png)

### Page 2 – Pricing & Product Positioning

**Business focus:** Understanding catalogue pricing and product positioning.

Key analysis:
- Average and median product price.
- Premium product count.
- Price-segment distribution.
- Average price by category.
- Top 10 most expensive brands.
- Customer rating by price segment.

![Pricing and Product Positioning](Screenshots/Pricing%20%26%20Product%20Positioning.png)

### Page 3 – Customer Engagement & Product Insights

**Business focus:** Understanding product interest and rating patterns.

Key analysis:
- Average loves per product.
- Total reviews.
- Sephora-exclusive share.
- Average loves by category.
- Brand-level engagement and rating comparison.
- Average loves by price segment.
- Customer rating distribution.

![Customer Engagement and Product Insights](Screenshots/Customer%20Engagement%20%26%20Product%20Insights.png)

*Open the Power BI folder to access the interactive `.pbix` report.*

---

## 💼 Business Recommendations

Based on the descriptive findings, the following actions can be considered for further business investigation.

| Area | Recommendation |
|---|---|
| Category Management | Review assortment concentration across Skincare and Makeup. |
| Brand Management | Investigate brands with higher average loves, considering catalogue-size thresholds. |
| Pricing Strategy | Review the balance of Budget, Mid-Range, and Premium products. |
| Availability Management | Investigate categories with higher snapshot out-of-stock rates using live inventory data. |
| Customer Engagement | Study products attracting higher loves and ratings for further merchandising analysis. |

These recommendations are intended to guide investigation. Commercial decisions should be supported by transaction, inventory-history, and customer-level data.

---

## ⚙️ How to Run This Project

### 1. Clone the repository

```bash
git clone https://github.com/seema-kri/beauty360.git
```

### 2. Navigate to the project folder

```bash
cd beauty360
```

### 3. Create a virtual environment (recommended)

```bash
python -m venv venv
```

Activate it on Windows:

```bash
venv\Scripts\activate
```

### 4. Install dependencies

```bash
pip install -r requirements.txt
```

### 5. Run the Python analysis

Open:

```text
Python/Product_Catalogue_Analysis.ipynb
```

Run the notebook using Jupyter Notebook or VS Code.

### 6. Run the SQL ETL

- Install and open PostgreSQL.
- Create the `beauty360` database.
- Open `SQL_ETL/beauty360_etl.sql`.
- Execute the script in PostgreSQL.
- Review the staging and final reporting tables.
- Run the validation queries.

### 7. Open the Power BI dashboard

Open:

```text
PowerBI/Dashboard.pbix
```

Refresh the data connections if required and explore the interactive report.

---

## 🚀 Limitations & Future Scope

### Current limitations

- The dataset represents one catalogue snapshot.
- No transaction-level sales or revenue data is available.
- No customer-level information is available.
- Loves and reviews cannot establish actual product demand or purchases.
- Availability represents a snapshot, not historical stock performance.
- Small categories require cautious interpretation.

### Future enhancements

- Integrate order and transaction data to analyse actual sales and revenue.
- Add historical inventory data to study stockout trends.
- Build product-level demand and sales forecasting when suitable historical data becomes available.
- Develop a product recommendation engine using product attributes and customer behaviour data.
- Automate ETL and scheduled dashboard refreshes.
- Expand the analysis to multiple beauty retailers when comparable datasets are available.

---

## 📑 Project Documentation

| Document | Description |
|---|---|
| Business Requirements Document | Business problem, objectives, requirements, KPIs, and scope |
| Python Notebook | EDA, cleaning, and feature engineering |
| SQL ETL Script | Staging, transformation, and validation |
| Power BI Report | Interactive business dashboards |
| Final Project Report | Complete project journey, decisions, challenges, findings, and learnings *(planned)* |

The final project report will be added to the `Documentation/` folder.

---

## 👩‍💻 Author

**Seema Kumari** | Data Analyst

📧 [seemakri136@gmail.com](mailto:seemakri136@gmail.com)

🔗 [LinkedIn](https://linkedin.com/in/seema-kumari-375763308)

Open to Data Analyst opportunities, collaborations, and conversations around analytics.

---

⭐ If you found this project useful, a star on the GitHub repository is appreciated!

**Repository:** [BEAUTY 360° – GitHub](https://github.com/seema-kri/beauty360)
