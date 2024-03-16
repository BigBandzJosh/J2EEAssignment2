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

CREATE TABLE IF NOT EXISTS order_items (
                        id INT AUTO_INCREMENT PRIMARY KEY,
                        order_id INT,
                        product_id INT,
                        quantity INT,
                        FOREIGN KEY (order_id) REFERENCES orders(id),
                        FOREIGN KEY (product_id) REFERENCES products(product_id)
);


INSERT INTO products (product_name, product_price, product_category, product_quantity) VALUES ('Laptop', 500.00,'Electronics', 1);
INSERT INTO products (product_name, product_price, product_category, product_quantity) VALUES ('Mouse', 20.00 ,'Electronics',3);
INSERT INTO products (product_name, product_price, product_category, product_quantity) VALUES ('Keyboard', 50.00,'Electronics',3);
INSERT INTO products (product_name, product_price, product_category, product_quantity) VALUES ('Monitor', 200.00,'Electronics',3);
INSERT INTO products (product_name, product_price, product_category, product_quantity) VALUES ('Printer', 150.00,'Electronics',4);
INSERT INTO products (product_name, product_price, product_category, product_quantity) VALUES ('Tablet', 300.00,'Electronics',5);
INSERT INTO products (product_name, product_price, product_category, product_quantity) VALUES ('Smartphone', 400.00,'Electronics',6);
INSERT INTO products (product_name, product_price, product_category, product_quantity) VALUES ('Headphones', 100.00,'Electronics',7);
INSERT INTO products (product_name, product_price, product_category, product_quantity) VALUES ('Earbuds', 50.00,'Electronics',8);
INSERT INTO products (product_name, product_price, product_category, product_quantity) VALUES ('Camera', 200.00,'Electronics',9);
INSERT INTO products (product_name, product_price, product_category, product_quantity) VALUES ('Television', 600.00,'Electronics',10);
# Insert products with 3 different categories
INSERT INTO products (product_name, product_price, product_category, product_quantity) VALUES ('T-shirt', 20.00,'Clothing',11);
INSERT INTO products (product_name, product_price, product_category, product_quantity) VALUES ('Jeans', 50.00,'Clothing',12);
INSERT INTO products (product_name, product_price, product_category, product_quantity) VALUES ('Sweater', 100.00,'Clothing',13);
INSERT INTO products (product_name, product_price, product_category, product_quantity) VALUES ('Jacket', 150.00,'Clothing',14);
INSERT INTO products (product_name, product_price, product_category, product_quantity) VALUES ('Dress', 200.00,'Clothing',15);
INSERT INTO products (product_name, product_price, product_category, product_quantity) VALUES ('Skirt', 50.00,'Clothing',16);
INSERT INTO products (product_name, product_price, product_category, product_quantity) VALUES ('Shorts', 30.00,'Clothing',17);