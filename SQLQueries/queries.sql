CREATE DATABASE IF NOT EXISTS orderManagement;

USE orderManagement;

CREATE TABLE IF NOT EXISTS customers (
                        id INT AUTO_INCREMENT PRIMARY KEY,
                        first_name VARCHAR(100),
                        last_name VARCHAR(100),
                        email VARCHAR(100),
                        phone VARCHAR(100)
);

CREATE TABLE IF NOT EXISTS orders (
                        id INT AUTO_INCREMENT PRIMARY KEY,
                        order_date DATE,
                        customer_name VARCHAR(100),
                        total_amount DECIMAL(10, 2),
                        customer_id INT,
                        FOREIGN KEY (customer_id) REFERENCES customers(id)
);

CREATE TABLE IF NOT EXISTS products (
                        product_id INT AUTO_INCREMENT PRIMARY KEY,
                        product_name VARCHAR(100),
                        product_price DECIMAL(10, 2),
                        product_category VARCHAR(100)
);

CREATE TABLE IF NOT EXISTS product_reviews (
                        id INT AUTO_INCREMENT PRIMARY KEY,
                        product_id INT,
                        review_title VARCHAR(100),
                        review_text TEXT,
                        review_rating INT,
                        FOREIGN KEY (product_id) REFERENCES products(product_id)
);


INSERT INTO products (product_name, product_price, product_category) VALUES ('Laptop', 500.00,'Electronics');
INSERT INTO products (product_name, product_price, product_category) VALUES ('Mouse', 20.00 ,'Electronics');
INSERT INTO products (product_name, product_price, product_category) VALUES ('Keyboard', 50.00,'Electronics');
INSERT INTO products (product_name, product_price, product_category) VALUES ('Monitor', 200.00,'Electronics');
INSERT INTO products (product_name, product_price, product_category) VALUES ('Printer', 150.00,'Electronics');
INSERT INTO products (product_name, product_price, product_category) VALUES ('Tablet', 300.00,'Electronics');

