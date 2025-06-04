# Walmart-Data-Analysis-Project: Using MySQL & Python

This project delivers a comprehensive data analysis workflow aimed at uncovering key business insights from Walmart’s sales data. It combines Python for data cleaning and exploration, SQL for sophisticated data querying, and a structured approach to address important business challenges.

---

## Project Steps

### 1. Set Up the Environment
- **Tools Used:** Jupyter Notebook, Python, SQL (MySQL)
- **Goal:** Create a structured workspace within Jupyter Notebook and organize project folders for smooth development and data handling.

### 2. Download Walmart Sales Data
- **Data Source:** Kaggle  
- **Dataset Link:** [Walmart Sales Dataset](https://www.kaggle.com/datasets/najir0123/walmart-10k-sales-datasets)
- **Storage:** Save the data in the `data/` folder for easy reference and access.

### 3. Install Required Libraries and Load Data
- **Libraries:**  
- **Loading Data:**  
Read the data into a Pandas DataFrame for initial analysis and transformations.

### 4. Explore the Data
- **Goal:** Conduct an initial data exploration to understand data distribution, check column names, types, and identify potential issues.
- **Analysis:** Use functions like `.info()`, `.describe()`, and `.head()` to get a quick overview of the data structure and statistics.

### 5. Data Cleaning
- **Remove Duplicates:** Identify and remove duplicate entries to avoid skewed results.
- **Handle Missing Values:** Drop rows or columns with missing values if they are insignificant; fill values where essential.
- **Fix Data Types:** Ensure all columns have consistent data types (e.g., dates as datetime, prices as float).
- **Currency Formatting:** Use `.replace()` to handle and format currency values for analysis.
- **Validation:** Check for any remaining inconsistencies and verify the cleaned data.

### 6. Feature Engineering
- **Create New Columns:** Calculate the Total Amount for each transaction by multiplying `unit_price` by `quantity` and adding this as a new column.
- **Enhance Dataset:** Adding this calculated field will streamline further SQL analysis and aggregation tasks.

### 7. Load Data into MySQL and PostgreSQL
- **Set Up Connections:** Connect to MySQL and PostgreSQL using SQLAlchemy and load the cleaned data into each database.
- **Table Creation:** Set up tables in both MySQL and PostgreSQL using Python SQLAlchemy to automate table creation and data insertion.
- **Verification:** Run initial SQL queries to confirm that the data has been loaded accurately.

### 8. SQL Analysis: Complex Queries and Business Problem Solving
- **Business Problem-Solving:** Write and execute complex SQL queries to answer critical business questions, such as:
- Revenue trends across branches and categories
- Identifying best-selling product categories
- Sales performance by time, city, and payment method
- Analyzing peak sales periods and customer buying patterns
- **Profit margin analysis by branch and category**

---

## Key Features

- **End-to-End Pipeline:** From raw data download to advanced SQL analysis.
- **Cross-Platform:** Supports both MySQL and PostgreSQL for database analysis.
- **Business Insights:** Focused on extracting actionable insights for retail operations.
