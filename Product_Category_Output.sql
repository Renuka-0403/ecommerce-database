CREATE TABLE Category (
    Category_ID    NUMBER PRIMARY KEY,
    Category_Name  VARCHAR2(50) NOT NULL,
    Description    VARCHAR2(255)
);

-- Table created.

INSERT INTO Category (Category_ID, Category_Name, Description)
VALUES (1, 'Analog', 'Classic analog watches');

-- 1 row created.

INSERT INTO Category (Category_ID, Category_Name, Description)
VALUES (2, 'Digital', 'Modern digital watches');

-- 1 row created.

INSERT INTO Category (Category_ID, Category_Name, Description)
VALUES (3, 'Smart Watch', 'Smart watches with advanced features');

-- 1 row created.

INSERT INTO Category (Category_ID, Category_Name, Description)
VALUES (4, 'Sports', 'Watches designed for sports and outdoor activities');

-- 1 row created.

INSERT INTO Category (Category_ID, Category_Name, Description)
VALUES (5, 'Luxury', 'Premium and luxury watches');

-- 1 row created.

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

-- Table created.

INSERT INTO Product
VALUES (101, 'Classic Silver Watch', 1, 1, 2499.00, 'Silver, Black', 'Leather', 'Black', '50m', 25);

-- 1 row created.

INSERT INTO Product
VALUES (102, 'Elegant Gold Watch', 2, 1, 3999.00, 'Gold', 'Stainless Steel', 'White', '50m', 18);

-- 1 row created.

INSERT INTO Product
VALUES (103, 'Digital Sport Watch', 3, 2, 1999.00, 'Black, Blue', 'Silicone', 'Black', '100m', 30);

-- 1 row created.

INSERT INTO Product
VALUES (104, 'Smart Fit Pro', 4, 3, 5999.00, 'Black, Grey', 'Silicone', 'Black', '50m', 15);

-- 1 row created.

INSERT INTO Product
VALUES (105, 'Smart Active Watch', 5, 3, 7499.00, 'Black, Green', 'Silicone', 'Black', '50m', 12);

-- 1 row created.

INSERT INTO Product
VALUES (106, 'Sports Chronograph', 6, 4, 4599.00, 'Black, Red', 'Stainless Steel', 'Black', '100m', 20);

-- 1 row created.

INSERT INTO Product
VALUES (107, 'Outdoor Pro Watch', 7, 4, 5299.00, 'Black, Orange', 'Silicone', 'Black', '200m', 14);


-- 1 row created.

INSERT INTO Product
VALUES (108, 'Royal Gold Edition', 8, 5, 12999.00, 'Gold', 'Stainless Steel', 'Blue', '100m', 8);

-- 1 row created.

INSERT INTO Product
VALUES (109, 'Premium Leather Watch', 9, 5, 8999.00, 'Brown, Black', 'Leather', 'White', '50m', 10);

-- 1 row created.

INSERT INTO Product
VALUES (110, 'Classic Black Watch', 10, 1, 2999.00, 'Black', 'Leather', 'Black', '50m', 22);

-- 1 row created.


SELECT * FROM Category;

-- CATEGORY_ID  CATEGORY_NAME  DESCRIPTION
-- -----------  -------------  ------------------------------------------------
-- 1            Analog         Classic analog watches
-- 2            Digital        Modern digital watches
-- 3            Smart Watch    Smart watches with advanced features
-- 4            Sports         Watches designed for sports and outdoor activities
-- 5            Luxury         Premium and luxury watches
--
-- 5 rows selected.


SELECT * FROM Product;

-- PRODUCT_ID  PRODUCT_NAME            BRAND_ID  CATEGORY_ID  PRICE     STOCK
-- ----------  ----------------------  --------  -----------  --------  -----
-- 101         Classic Silver Watch    1         1            2499.00   25
-- 102         Elegant Gold Watch      2         1            3999.00   18
-- 103         Digital Sport Watch     3         2            1999.00   30
-- 104         Smart Fit Pro           4         3            5999.00   15
-- 105         Smart Active Watch      5         3            7499.00   12
-- 106         Sports Chronograph      6         4            4599.00   20
-- 107         Outdoor Pro Watch       7         4            5299.00   14
-- 108         Royal Gold Edition      8         5           12999.00    8
-- 109         Premium Leather Watch   9         5            8999.00   10
-- 110         Classic Black Watch     10        1            2999.00   22
--
-- 10 rows selected.


UPDATE Product
SET Price = 2799.00,
    Stock = 30
WHERE Product_ID = 101;

-- 1 row updated.


SELECT * FROM Product
WHERE Product_ID = 101;

-- PRODUCT_ID  PRODUCT_NAME          BRAND_ID  CATEGORY_ID  PRICE    STOCK
-- ----------  --------------------  --------  -----------  -------  -----
-- 101         Classic Silver Watch  1         1            2799     30
--
-- 1 row selected.


UPDATE Product
SET Price = 4299.00
WHERE Product_Name = 'Elegant Gold Watch';


-- 1 row updated.


SELECT * FROM Product
WHERE Product_Name = 'Elegant Gold Watch';

-- PRODUCT_ID  PRODUCT_NAME        BRAND_ID  CATEGORY_ID  PRICE    STOCK
-- ----------  ------------------  --------  -----------  -------  -----
-- 102         Elegant Gold Watch  2         1            4299     18
--
-- 1 row selected.


DELETE FROM Product
WHERE Product_ID = 110;

-- 1 row deleted.


SELECT * FROM Product
WHERE Product_ID = 110;

-- no rows selected


DELETE FROM Product
WHERE Product_Name = 'Premium Leather Watch';

-- 1 row deleted.


SELECT * FROM Product
WHERE Product_Name = 'Premium Leather Watch';

-- no rows selected


SELECT * FROM Product;

-- PRODUCT_ID  PRODUCT_NAME           BRAND_ID  CATEGORY_ID  PRICE     STOCK
-- ----------  ---------------------  --------  -----------  --------  -----
-- 101         Classic Silver Watch   1         1            2799.00   30
-- 102         Elegant Gold Watch     2         1            4299.00   18
-- 103         Digital Sport Watch    3         2            1999.00   30
-- 104         Smart Fit Pro          4         3            5999.00   15
-- 105         Smart Active Watch     5         3            7499.00   12
-- 106         Sports Chronograph     6         4            4599.00   20
-- 107         Outdoor Pro Watch      7         4            5299.00   14
-- 108         Royal Gold Edition     8         5           12999.00    8
--
-- 8 rows selected.


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


-- CATEGORY_NAME  PRODUCT_ID  PRODUCT_NAME           PRICE   STOCK
-- -------------  ----------  ---------------------  ------  -----
-- Analog         101         Classic Silver Watch    2799    30
-- Analog         102         Elegant Gold Watch      4299    18
-- Digital        103         Digital Sport Watch     1999    30
-- Luxury         108         Royal Gold Edition     12999     8
-- Smart Watch    105         Smart Active Watch      7499    12
-- Smart Watch    104         Smart Fit Pro           5999    15
-- Sports         107         Outdoor Pro Watch       5299    14
-- Sports         106         Sports Chronograph      4599    20
--
-- 8 rows selected.


SELECT
    p.Product_ID,
    p.Product_Name,
    p.Price,
    p.Stock
FROM Product p
JOIN Category c
    ON p.Category_ID = c.Category_ID
WHERE c.Category_Name = 'Smart Watch';

-- PRODUCT_ID  PRODUCT_NAME         PRICE  STOCK
-- ----------  -------------------  -----  -----
-- 104         Smart Fit Pro         5999     15
-- 105         Smart Active Watch    7499     12
--
-- 2 rows selected.


SELECT
    c.Category_Name,
    COUNT(p.Product_ID) AS Total_Products
FROM Category c
LEFT JOIN Product p
    ON c.Category_ID = p.Category_ID
GROUP BY c.Category_Name
ORDER BY c.Category_Name;

-- CATEGORY_NAME  TOTAL_PRODUCTS
-- -------------  --------------
-- Analog                      2
-- Digital                     1
-- Luxury                      1
-- Smart Watch                 2
-- Sports                      2
--
-- 5 rows selected.


COMMIT;

-- Commit complete.