-- products table
CREATE TABLE products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(100),
    category VARCHAR(50),
    price DECIMAL(10,2)
);

-- stores table
CREATE TABLE stores (
    store_id INT PRIMARY KEY,
    store_name VARCHAR(100),
    region VARCHAR(50)
);

-- sales table
CREATE TABLE sales (
    sale_id INT PRIMARY KEY,
    product_id INT FOREIGN KEY REFERENCES products(product_id),
    store_id INT FOREIGN KEY REFERENCES stores(store_id),
    sale_date DATE,
    quantity_sold INT,
    revenue DECIMAL(10,2)
);