CREATE TABLE Category (
    Category_ID     NUMBER PRIMARY KEY,
    Category_Name   VARCHAR2(50) NOT NULL,
    Description     VARCHAR2(255)
);

INSERT INTO Category (Category_ID, Category_Name, Description)
VALUES (1, 'Analog', 'Classic analog watches');

INSERT INTO Category (Category_ID, Category_Name, Description)
VALUES (2, 'Digital', 'Modern digital watches');

INSERT INTO Category (Category_ID, Category_Name, Description)
VALUES (3, 'Smart Watch', 'Smart watches with advanced features');

INSERT INTO Category (Category_ID, Category_Name, Description)
VALUES (4, 'Sports', 'Watches designed for sports and outdoor activities');

INSERT INTO Category (Category_ID, Category_Name, Description)
VALUES (5, 'Luxury', 'Premium and luxury watches');

CREATE TABLE Product (
    Product_ID          NUMBER PRIMARY KEY,
    Product_Name        VARCHAR2(100) NOT NULL,
    Brand_ID            NUMBER,
    Category_ID         NUMBER NOT NULL,
    Price               NUMBER(10,2) NOT NULL,
    Colors              VARCHAR2(100),
    Strap_Material      VARCHAR2(50),
    Dial_Color          VARCHAR2(50),
    Water_Resistance    VARCHAR2(50),
    Stock               NUMBER NOT NULL,
    CONSTRAINT FK_Product_Category
        FOREIGN KEY (Category_ID)
        REFERENCES Category(Category_ID)
);

INSERT INTO Product
VALUES (101, 'Classic Silver Watch', 1, 1, 2499.00, 'Silver, Black', 'Leather', 'Black', '50m', 25);

INSERT INTO Product
VALUES (102, 'Elegant Gold Watch', 2, 1, 3999.00, 'Gold', 'Stainless Steel', 'White', '50m', 18);

INSERT INTO Product
VALUES (103, 'Digital Sport Watch', 3, 2, 1999.00, 'Black, Blue', 'Silicone', 'Black', '100m', 30);

INSERT INTO Product
VALUES (104, 'Smart Fit Pro', 4, 3, 5999.00, 'Black, Grey', 'Silicone', 'Black', '50m', 15);

INSERT INTO Product
VALUES (105, 'Smart Active Watch', 5, 3, 7499.00, 'Black, Green', 'Silicone', 'Black', '50m', 12);

INSERT INTO Product
VALUES (106, 'Sports Chronograph', 6, 4, 4599.00, 'Black, Red', 'Stainless Steel', 'Black', '100m', 20);

INSERT INTO Product
VALUES (107, 'Outdoor Pro Watch', 7, 4, 5299.00, 'Black, Orange', 'Silicone', 'Black', '200m', 14);

INSERT INTO Product
VALUES (108, 'Royal Gold Edition', 8, 5, 12999.00, 'Gold', 'Stainless Steel', 'Blue', '100m', 8);

INSERT INTO Product
VALUES (109, 'Premium Leather Watch', 9, 5, 8999.00, 'Brown, Black', 'Leather', 'White', '50m', 10);

INSERT INTO Product
VALUES (110, 'Classic Black Watch', 10, 1, 2999.00, 'Black', 'Leather', 'Black', '50m', 22);

SELECT * FROM Category;

SELECT * FROM Product;

UPDATE Product
SET Price = 2799.00,
    Stock = 30
WHERE Product_ID = 101;

SELECT * FROM Product
WHERE Product_ID = 101;

UPDATE Product
SET Price = 4299.00
WHERE Product_Name = 'Elegant Gold Watch';

SELECT * FROM Product
WHERE Product_Name = 'Elegant Gold Watch';

DELETE FROM Product
WHERE Product_ID = 110;

SELECT * FROM Product
WHERE Product_ID = 110;

DELETE FROM Product
WHERE Product_Name = 'Premium Leather Watch';

SELECT * FROM Product
WHERE Product_Name = 'Premium Leather Watch';

SELECT * FROM Product;

SELECT
    c.Category_Name,
    p.Product_ID,
    p.Product_Name,
    p.Price,
    p.Stock
FROM Category c
JOIN Product p
    ON c.Category_ID = p.Category_ID
ORDER BY c.Category_Name, p.Product_Name;

SELECT
    p.Product_ID,
    p.Product_Name,
    p.Price,
    p.Stock
FROM Product p
JOIN Category c
    ON p.Category_ID = c.Category_ID
WHERE c.Category_Name = 'Smart Watch';

SELECT
    c.Category_Name,
    COUNT(p.Product_ID) AS Total_Products
FROM Category c
LEFT JOIN Product p
    ON c.Category_ID = p.Category_ID
GROUP BY c.Category_Name
ORDER BY c.Category_Name;

COMMIT;