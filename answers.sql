--Question 1
CREATE TABLE orders(  --create an orders table to separate it with the products table
    OrderID INT PRIMARY KEY,
    CustomerName VARCHAR(100)
);

--create a products table conecting it with orders table
CREATE TABLE products(
    ProductID INT  AUTO_INCREMENT PRIMARY KEY,
    OrderID INT,
    Products VARCHAR(100)
    FOREIGN KEY (OrderID) REFERENCES orders(OrderID) --foregn key constraint
); -- removes the using of ,more items in one row

INSERT INTO orders(OrderID, CustomerName) --added values to the orders table
VALUES 
(101, 'John Doe')
(102, 'Jane Smith'),
(103, 'Emily Clark');

INSERT INTO products(OrderID, Product)--added values to the products table
 VALUES 
(101, 'Laptop'),
(101, 'Mouse'),
(102, 'Tablet'),
(102, 'Keyboard'),
(102, 'Mouse'),
(103, 'phone');

--Question 2
CREATE TABLE orders_t(  --create an orders table 
    OrderID INT PRIMARY KEY,
    CustomerName VARCHAR(100)
);

--create a products table which includes quantity
CREATE TABLE order_products(
    ProductID INT AUTO_INCREMENT PRIMARY KEY,
    OrderID INT,
    Product VARCHAR(100),
    Quantity INT
    FOREIGN KEY (OrderID) REFERENCES orders(OrderID) --foreign key constraint
);--this ensures removal of partial dependency

INSERT INTO orders_t (OrderID, CustomerName)--added values to the orders_t table
VALUES 
(101, 'John Doe')
(102, 'Jane Smith'),
(103, 'Emily Clark');

INSERT INTO 0rder_products (OrderID, Product, Quantity)--added values to the order_products table
VALUES 
(101, 'Laptop', 2),
(101, 'Mouse', 1),
(102, 'Tablet', 3),
(102, 'Keyboard', 1),
(102, 'Mouse', 2),
(103, 'phone', 1);