# Retail Sales Analysis - SQL Project

## Project Overview
Analyzed retail sales data for an e-commerce company using PostgreSQL to answer business questions about customers, revenue, and product performance.

## Database Schema

### Tables Created:
1. **customers** (15 records) - Customer information and demographics
2. **orders** (25 records) - Order transactions with dates and amounts
3. **order_items** (50 records) - Individual products in each order

### Relationships:
- customers.customer_id → orders.customer_id (one-to-many)
- orders.order_id → order_items.order_id (one-to-many)

## Business Questions Answered

### 1. Customer Analysis
- Identified customers by state (Texas focus)
- Analyzed top 5 customers by spending
- Tracked customer purchase frequency

### 2. Revenue Analysis
- Calculated total revenue from completed orders
- Analyzed monthly sales trends
- Identified high-value orders above average

### 3. Product Performance
- Analyzed sales by product category
- Identified best-selling products
- Calculated revenue by category

### 4. Order Management
- Tracked cancelled orders with customer details
- Analyzed order status distribution

## Key SQL Techniques Used
- **JOINs**: INNER JOIN, LEFT JOIN for multi-table analysis
- **Aggregations**: SUM, COUNT, AVG for metrics
- **GROUP BY**: Category and customer-level analysis
- **Subqueries**: Average comparisons for high-value orders
- **Date Functions**: EXTRACT for monthly analysis
- **Filtering**: WHERE clauses for status and state filtering

## Key Insights
- Electronics category generates highest revenue
- Top 5 customers account for significant portion of sales
- Monthly revenue shows growth trend from January to March 2024
- 2 orders cancelled out of 25 total (8% cancellation rate)

## Technologies Used
- PostgreSQL 18
- pgAdmin 4
- SQL (DDL & DML)

## Files
- `create_tables.sql` - Database schema
- `insert_data.sql` - Sample data
- `business_queries.sql` - 10 analytical queries

## Author
Jay Drava - Aspiring Data Analyst
[GitHub](https://github.com/jaydrava/66-day-data-analyst-journey)
