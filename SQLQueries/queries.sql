CREATE DATABASE orderManagement;

USE orderManagement;

CREATE TABLE customers (
                        id INT AUTO_INCREMENT PRIMARY KEY,
                        first_name VARCHAR(100),
                        last_name VARCHAR(100),
                        email VARCHAR(100),
                        phone VARCHAR(100)
);

CREATE TABLE orders (
                        id INT AUTO_INCREMENT PRIMARY KEY,
                        order_date DATE,
                        customer_name VARCHAR(100),
                        total_amount DECIMAL(10, 2)
);

CREATE TABLE products (
                        id INT AUTO_INCREMENT PRIMARY KEY,
                        product_name VARCHAR(100),
                        price DECIMAL(10, 2)
);


INSERT INTO products (product_name, price) VALUES ('Laptop', 500.00);
INSERT INTO products (product_name, price) VALUES ('Mouse', 20.00);
INSERT INTO products (product_name, price) VALUES ('Keyboard', 50.00);
INSERT INTO products (product_name, price) VALUES ('Monitor', 200.00);
INSERT INTO products (product_name, price) VALUES ('Printer', 150.00);