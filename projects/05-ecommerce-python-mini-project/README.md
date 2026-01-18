# E-Commerce Sales Analysis (Python)

## 📌 Project Overview
This project analyzes messy e-commerce sales data using **Python and Pandas**.  
The goal is to simulate a **real-world data analyst workflow**: cleaning raw data, answering business questions, and generating actionable insights.

The project focuses on:
- Handling messy and inconsistent data
- Applying correct business logic to metrics
- Avoiding common data analysis pitfalls
- Writing clear, explainable analysis

---

## 📂 Project Structure
```
ecommerce-python-mini-project/
│
├── data/
│ ├── orders_messy.csv
│ ├── customers_messy.csv
│ └── products_messy.csv
│
├── notebooks/
│ └── E-Commerce Sales Analysis.ipynb
│
└── README.md
```
---

## 🧹 Data Cleaning Summary

### Orders Data
- Converted `order_date` to datetime (handled invalid dates)
- Converted `quantity` to numeric (handled `"N/A"` values safely)
- Identified missing `order_amount` values and **excluded them only from revenue metrics**
- Verified no duplicate orders existed

### Customers Data
- Cleaned customer names (trimmed whitespace, standardized casing)
- Standardized region names
- Converted `signup_date` to datetime
- Verified no duplicate customers

### Products Data
- Converted `price` to numeric
- Standardized product categories
- Cleaned product names while **preserving business meaning**
- Avoided over-normalization that could break joins or reporting

> ⚠️ Important design decision:  
> Missing values were **not blindly filled or dropped**.  
> Each metric explicitly controls how missing data participates in analysis.

---

## 📊 Business Questions Answered

### Core Analysis
- Total revenue in **Q4 2024**
- Average order value by month (October, November, December)
- Region generating the highest revenue
- Top 5 best-selling products (by quantity)
- Customer with the highest total spend
- Product category generating the most revenue
- Number of new customers signed up in Q4 2024

### Advanced Insights
- Month-over-month revenue growth:
  - October → November
  - November → December
- Customers who placed more than 3 orders in Q4
- Day of the week with the highest average order value

---

## 🧠 Key Analytical Decisions
- **Revenue** was calculated using `order_amount` (order-level revenue), not quantity × price
- Orders with unknown revenue were excluded **only from revenue calculations**
- Orders with unknown quantity were excluded **only from quantity-based rankings**
- Raw data was never overwritten; all analysis was derived from clean base tables

---

## 🛠 Tools & Technologies
- Python
- Pandas
- Jupyter Notebook
- Git & GitHub

---

## 📈 Key Takeaways
- Data cleaning decisions directly affect business metrics
- Over-cleaning can be as dangerous as under-cleaning
- Resetting data pipelines is sometimes necessary to avoid corrupted state
- Clear thinking matters more than complex code

---

## 🚀 Next Improvements
- Add visualizations (monthly revenue trends, category breakdowns)
- Convert notebook analysis into reusable Python scripts
- Add automated data validation checks

---

## 👤 Author
**JD**  
Data Analyst in training  
Part of the *66-Day Data Analyst Journey*
