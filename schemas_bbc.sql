-- Create Database
CREATE DATABASE IF NOT EXISTS brew_and_bloom_coffee;
USE brew_and_bloom_coffee;

-- Optional: ensure InnoDB & proper charset (good practice)
-- You can skip these lines if not needed.
SET default_storage_engine = INNODB;
SET NAMES utf8mb4;

-- Drop tables in correct order (child -> parent)
DROP TABLE IF EXISTS sales;
DROP TABLE IF EXISTS customers;
DROP TABLE IF EXISTS products;
DROP TABLE IF EXISTS city;

-- SCHEMAS FOR brew_and_bloom_coffee

-- 1st import to city
CREATE TABLE city
(
    city_id         INT PRIMARY KEY,
    city_name       VARCHAR(15),
    population      BIGINT,
    estimated_rent  FLOAT,
    city_rank       INT
) ENGINE=InnoDB;

-- 2nd import to products
CREATE TABLE products
(
    product_id      INT PRIMARY KEY,
    product_name    VARCHAR(35),
    price           FLOAT
) ENGINE=InnoDB;

-- 3rd import to customers
CREATE TABLE customers
(
    customer_id     INT PRIMARY KEY,
    customer_name   VARCHAR(25),
    city_id         INT,
    CONSTRAINT fk_city
        FOREIGN KEY (city_id)
        REFERENCES city(city_id)
        ON UPDATE CASCADE
        ON DELETE RESTRICT
) ENGINE=InnoDB;

-- 4th import to sales
CREATE TABLE sales
(
    sale_id     INT PRIMARY KEY,
    sale_date   DATE,
    product_id  INT,
    customer_id INT,
    total       FLOAT,
    rating      INT,
    CONSTRAINT fk_products
        FOREIGN KEY (product_id)
        REFERENCES products(product_id)
        ON UPDATE CASCADE
        ON DELETE RESTRICT,
    CONSTRAINT fk_customers
        FOREIGN KEY (customer_id)
        REFERENCES customers(customer_id)
        ON UPDATE CASCADE
        ON DELETE RESTRICT
) ENGINE=InnoDB;

-- END of SCHEMAS
