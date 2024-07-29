# Retail Data Management System

## Project Overview

This project involves the design and implementation of a database system to manage customer purchases, product details, and employee information for a retail business. The system supports tracking purchases, maintaining customer data, managing product inventory, and recording employee details involved in the sales process.

## Entity-Relationship Diagram (ERD)

![ERD Diagram](https://github.com/danartech/Retail-Data-Management-System/blob/main/ERR%20Diagram%20of%20Final%20Project.png)

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

The SQL script ([Final Project SQL Script](https://github.com/danartech/Retail-Data-Management-System/blob/main/Final%20Project.sql)) includes:

- **Table Creation**: Scripts to create tables with primary keys, foreign keys, and other constraints.
- **Data Insertion**: Commands to insert data from CSV files into the database.
- **Example Queries**: Sample queries to demonstrate data retrieval, including sales analysis and customer purchase history.

![SETUP NEW TABLES](https://github.com/danartech/Retail-Data-Management-System/blob/main/Screenshot%202024-07-29%20002920.png)

## User Account Setup

The project also involved setting up user accounts with specific roles and privileges to ensure secure and controlled access to the database. Users were assigned roles such as `DBA`, `UserAdmin`, and `Custom` with appropriate permissions to manage and interact with the database system.

![SETUP NEW USER](https://github.com/danartech/Retail-Data-Management-System/blob/main/Screenshot%202024-07-29%20004532.png)


![SETUP NEW USER](https://github.com/danartech/Retail-Data-Management-System/blob/main/Screenshot%202024-07-29%20004616.png)


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

- **ERD**: [View ERD Diagram](https://github.com/danartech/Retail-Data-Management-System/blob/main/ERR%20Diagram%20of%20Final%20Project.png) 
- **SQL Script**: [Final Project SQL Script](https://github.com/danartech/Retail-Data-Management-System/blob/main/Final%20Project.sql)
- **Data Files**: [Customers](./customer_purchases.csv) | [Products](./products.csv) | [Employees](./employees.csv) | [Customer Purchases](./customer_purchases.csv)
