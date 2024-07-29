# Retail Data Management System

## Project Overview

This project involves the design and implementation of a database system to manage customer purchases, product details, and employee information for a retail business. The system supports tracking purchases, maintaining customer data, managing product inventory, and recording employee details involved in the sales process.

## Entity-Relationship Diagram (ERD)

![ERD Diagram](./path/to/ERR%20Diagram%20of%20Final%20Project.png)

The ERD outlines the relationships between the main entities:

- **Customers**: Stores customer information.
- **Products**: Contains details about products.
- **Employees**: Holds employee details.
- **Customer Purchases**: Junction table linking customers, products, and employees.

## Data Handling and Processing

Data from CSV files was imported, cleaned, and inserted into the respective database tables:

- **Data Cleaning**: Included removing duplicates, standardizing data formats, and ensuring data integrity.
- **Data Insertion**: Utilized SQL scripts to populate tables, maintaining referential integrity and consistency.

## SQL Implementation

The SQL script (`Final Project.sql`) includes:

- **Table Creation**: Scripts to create tables with primary keys, foreign keys, and other constraints.
- **Data Insertion**: Commands to insert data from CSV files into the database.
- **Example Queries**: Sample queries to demonstrate data retrieval, including sales analysis and customer purchase history.

## Challenges and Solutions

- **Data Consistency**: Addressed through strict constraints and data validation during the loading process.
- **Normalization**: Ensured the schema was normalized to minimize redundancy and optimize performance.

## Future Improvements

- **Enhanced Data Validation**: Implement more comprehensive data validation during data entry.
- **Indexing**: Add indexes to improve query performance.
- **Advanced Data Analysis**: Develop analytical queries and dashboards for business insights.

## Conclusion

This project establishes a comprehensive system for managing retail data, demonstrating skills in data modeling, SQL programming, and data management. It serves as a foundation for further enhancements, including advanced analytics and automated reporting.

## Appendices

- **ERD**: [View ERD Diagram](./path/to/ERR%20Diagram%20of%20Final%20Project.png)
- **SQL Script**: [Download SQL Script](./path/to/Final%20Project.sql)
- **Data Files**: [Customers](./path/to/customers.csv) | [Products](./path/to/products.csv) | [Employees](./path/to/employees.csv) | [Customer Purchases](./path/to/customer_purchases.csv)
