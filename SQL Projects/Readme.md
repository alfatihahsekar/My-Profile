# SQL PROJECTS

# SQL Project 1 - Stocks Watch
### Basic Requirements

Manipulation: Collect data on your pick of 5 [stocks ]
* Create a table called `stocks`, where you will be inserting your data.
* The `stocks` table should have a column for `symbol`, `name`, `datetime`, and `price`.
* Collect your data! Choose 3 times throughout the day to document the price of each stock and continue for at least 1 week. You can do this moving forward, or just take a retroactive look at the stock market by taking data historically from regular intervals (e.g. the first of the month for the last six months).

Queries: Perform basic analysis on the data and identify trends.

* What are the distinct stocks in the table?
* Query all data for a single stock. Do you notice any overall trends?
* Which rows have a price above 100? between 40 to 50, etc?
* Sort the table by price. What are the minimum and maximum prices?

**Intermediate Challenge**

* Explore using aggregate functions to look at key statistics about the data (e.g., min, max, average).
* Group the data by stock and repeat. How do the stocks compare to each other?
* Group the data by day or hour of day. Does day of week or time of day impact prices?
* Which of the rows have a price greater than the average of all prices in the dataset?

**Advanced Challenge**

* In addition to the built-in aggregate functions, explore ways to calculate other key statistics about the data, such as the median or variance.
* Let’s refactor the data into 2 tables - `stock_info` to store general info about the stock itself (ie. `symbol`, `name`) and `stock_prices` to store the collected data on price (ie. `symbol`, `datetime`, `price`).
* Now, we do not need to repeat both `symbol` and `name` for each row of price data. Instead, join the 2 tables in order to view more information on the stock with each row of price.
* Add more variables to the `stock_info` table and update the data (e.g., sector, industry, etc).

Data Source: https://www.cnbc.com/stocks/

Quest: https://discuss.codecademy.com/t/data-science-independent-project-1-watching-the-stock-market/419943


# SQL Project 2 - Basic Exploratory Analysis with Pandas + Matplotlib + Seaborn
This is the second Python project, this project conducts a basic exploratory analysis of Roller Coaster data in the USA using Pandas, Matplotlib, and Seaborn
**There are 5 Steps in this project:**
1. Data Understanding
2. Data Preparation
4. Feature Understanding: Univariate Analysis
5. Feature Relationships
6. Answer Question: What are the Locations with the fastest roller coasters?

Data Source: https://www.kaggle.com/datasets/robikscube/rollercoaster-database/


Data: coaster_db.csv
