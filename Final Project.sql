/* -- Final Course Project --  by Dana Robinson
        
The Situation: A new client, Bubs Glover, the owner of Bubs’ Bigtime Baby Booties, has reached out to you for help building his business a database from the ground up.

The Objective: Use Your MySQL Database Administration skills to:
Design a database from scratch, which will capture information about Bubs’ customers, the purchases they make, his products, and his employees.
*/

-- Questions --
/*1) Bubs wants you to track information on his customers 
(first name, last name, email), his employees (first name, last name, start date, position held), 
his products, and the purchases customers make (which customer, when it was purchased, for how much money). 
Think about how many tables you should create. Which data goes in which tables? How should the tables relate to one another?
*/
-- table name: customers
-- customer_id
-- first_name
-- last_name
-- email_address 

-- table name: employees
-- employee_id
-- first_name
-- last_name
-- start_date

-- table name: products
-- product_id
-- product_name
-- launched_date

-- table name: customer_purchases
-- customer_purchase_id
-- customer_id
-- product_id
-- employee_id
-- purchased_at
-- amount_usd

/*2) Given the database design you came up with, use Workbench to create an EER diagram of the database. 
Include things like primary keys and foreign keys, and anything else you think you should have in the tables. 
Make sure to use reasonable data types for each column.
*/

-- Created ERR Diagram -- 

/*3) Create a schema called customer_purchasesbubsbooties. Within that schema, create the tables that you have diagramed out. 
Make sure they relate to each other, and that they have the same reasonable data types you selected previously.
*/

-- Created a schema caled bubsbooties

/*4) Add any constraints you think your tables’ columns should have. 
Think through which columns need to be unique, which ones are allowed to have NULL values, etc.
*/
-- Created the following tables using the ERR diagram/ERD by forward engineer sql script:
-- 	Tables Created:  customers , customer_purchases, products, employees

-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema bubsbooties
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema bubsbooties
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `bubsbooties` DEFAULT CHARACTER SET utf8mb4 ;
USE `bubsbooties` ;

-- -----------------------------------------------------
-- Table `bubsbooties`.`customers`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `bubsbooties`.`customers` (
  `customer_id` BIGINT NOT NULL,
  `first_name` VARCHAR(100) NOT NULL,
  `last_name` VARCHAR(100) NOT NULL COMMENT '\n',
  `email_address` VARCHAR(100) NOT NULL,
  PRIMARY KEY (`customer_id`))
COMMENT = '-- table: customers\n\n-- customer_id\n\n-- first_name\n\n-- last_name\n-- email_adddress ';


-- -----------------------------------------------------
-- Table `bubsbooties`.`employees`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `bubsbooties`.`employees` (
  `employee_id` BIGINT NOT NULL,
  `first_name` VARCHAR(100) NOT NULL,
  `last_name` VARCHAR(100) NOT NULL COMMENT '\n',
  `start_date` DATE NOT NULL,
  PRIMARY KEY (`employee_id`))
COMMENT = '-- table: employees\n\n-- employee_id\n\n-- first_name\n\n-- last_name\n\n-- start_date\n';


-- -----------------------------------------------------
-- Table `bubsbooties`.`products`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `bubsbooties`.`products` (
  `product_id` BIGINT NOT NULL,
  `product_name` VARCHAR(100) NOT NULL,
  `launched_date` DATE NOT NULL COMMENT '\n',
  PRIMARY KEY (`product_id`))
COMMENT = '-- table: products\n\n-- product_id\n\n-- product_name\n\n-- launched_date\n';


-- -----------------------------------------------------
-- Table `bubsbooties`.`customer_purchases`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `bubsbooties`.`customer_purchases` (
  `customer_purchase_id` BIGINT NOT NULL,
  `customer_id` BIGINT NOT NULL,
  `product_id` BIGINT NOT NULL COMMENT '\n',
  `employee_id` BIGINT NOT NULL,
  `purchased_at` TIMESTAMP NOT NULL,
  `amount_usd` DECIMAL(10,2) NOT NULL,
  PRIMARY KEY (`customer_purchase_id`),
  INDEX `customer_id_idx` (`customer_id` ASC) VISIBLE,
  INDEX `product_id_idx` (`product_id` ASC) VISIBLE,
  INDEX `employee_id_idx` (`employee_id` ASC) VISIBLE,
  CONSTRAINT `customer_id`
    FOREIGN KEY (`customer_id`)
    REFERENCES `bubsbooties`.`customers` (`customer_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `product_id`
    FOREIGN KEY (`product_id`)
    REFERENCES `bubsbooties`.`products` (`product_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `employee_id`
    FOREIGN KEY (`employee_id`)
    REFERENCES `bubsbooties`.`employees` (`employee_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
COMMENT = '-- table: customer_purchases\n\n-- customer_purchase_id\n\n-- customer_id\n\n-- product_id\n-- employee\n\n-- purchased_at\n\n-- amount_usd';


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;


/*5) Insert at least 3 records of data into each table. The exact values do not matter, so feel free to make them up. 
Just make sure that the data you insert makes sense, and that the tables tie together.
*/

SELECT 
    *
FROM
    customer_purchases;
SELECT 
    *
FROM
    customers;
SELECT 
    *
FROM
    employees;
SELECT 
    *
FROM
    products;

-- inserted data into tables --

INSERT INTO customers values
(1, 'Dana', 'Robinson', 'danarfintech@gmail.com'),
(2, 'Kelli', 'Roberts', 'kroberts@madeup.com'),
(3, 'John', 'Robinson', 'jrob152@fake.com');

INSERT INTO employees values
(1, 'Elon', 'Dust', '2023-04-05'),
(2, 'Mark', 'Zuckerberry', '2023-05-01'),
(3, 'Jamie', 'Tiger', '2024-01-05');

INSERT INTO products values
(1, 'Small Booties', '2023-04-01'),
(2, 'Mediumn Booties', '2023-04-01'),
(3, 'Large Booties', '2023-04-01');

INSERT INTO customer_purchases values
(1, 1, 2, 1, '2023-04-01 10:05:01', 32.52),
(2, 2, 2, 2, '2023-05-01 11:10:15', 38.99),
(3, 3, 3, 1, '2023-05-25 01:30:05', 45.79);


/*6) Create two users and give them access to the database. The first user, TuckerReilly, will be the DBA, and should get full database administrator privileges. 
The second user, EllaBrody, is an Analyst, and only needs read access.
*/
-- Created  both user accounts --
