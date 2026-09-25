SQL> CREATE TABLE Orders (
  2  	 Order_ID	NUMBER PRIMARY KEY,
  3  	 Customer_ID	NUMBER NOT NULL,
  4  	 Order_Date	DATE NOT NULL,
  5  	 Total		NUMBER(10,2) NOT NULL,
  6  	 Order_Status	VARCHAR2(20) NOT NULL,
  7  	 Total_Amount	NUMBER(10,2) NOT NULL,
  8  	 CONSTRAINT FK_Orders_Customer
  9  	     FOREIGN KEY (Customer_ID)
 10  	     REFERENCES Customer(Customer_ID)
 11  );

Table created.

SQL> CREATE TABLE Order_Details (
  2  	 Order_Detail_ID NUMBER PRIMARY KEY,
  3  	 Order_ID	 NUMBER NOT NULL,
  4  	 Product_ID	 NUMBER NOT NULL,
  5  	 Quantity	 NUMBER NOT NULL,
  6  	 Unit_Price	 NUMBER(10,2) NOT NULL,
  7  	 Subtotal	 NUMBER(10,2) NOT NULL,
  8  	 CONSTRAINT FK_OrderDetails_Order
  9  	     FOREIGN KEY (Order_ID)
 10  	     REFERENCES Orders(Order_ID),
 11  	 CONSTRAINT FK_OrderDetails_Product
 12  	     FOREIGN KEY (Product_ID)
 13  	     REFERENCES Product(Product_ID)
 14  );

Table created.
 
SQL> INSERT INTO Orders
  2  VALUES (1001, 1, TO_DATE('01-09-2026','DD-MM-YYYY'), 6497.00, 'Delivered', 6497.00);

1 row created.

SQL> INSERT INTO Orders
  2  VALUES (1002, 2, TO_DATE('02-09-2026','DD-MM-YYYY'), 3999.00, 'Shipped', 3999.00);

1 row created.
 
SQL> INSERT INTO Orders
  2  VALUES (1003, 3, TO_DATE('03-09-2026','DD-MM-YYYY'), 1999.00, 'Processing', 1999.00);

1 row created.

SQL> INSERT INTO Orders
  2  VALUES (1004, 4, TO_DATE('04-09-2026','DD-MM-YYYY'), 5999.00, 'Delivered', 5999.00);

1 row created.
 
SQL> INSERT INTO Orders
  2  VALUES (1005, 5, TO_DATE('05-09-2026','DD-MM-YYYY'), 7499.00, 'Shipped', 7499.00);

1 row created.

SQL> INSERT INTO Orders
  2  VALUES (1006, 6, TO_DATE('06-09-2026','DD-MM-YYYY'), 4599.00, 'Processing', 4599.00);

1 row created.

SQL> INSERT INTO Orders
  2  VALUES (1007, 7, TO_DATE('07-09-2026','DD-MM-YYYY'), 5299.00, 'Delivered', 5299.00);

1 row created.

SQL> INSERT INTO Orders
  2  VALUES (1008, 8, TO_DATE('08-09-2026','DD-MM-YYYY'), 12999.00, 'Shipped', 12999.00);

1 row created.
 
SQL> INSERT INTO Orders
  2  VALUES (1009, 9, TO_DATE('09-09-2026','DD-MM-YYYY'), 2499.00, 'Processing', 2499.00);

1 row created.

SQL> INSERT INTO Order_Details VALUES (1, 1001, 101, 1, 2499.00, 2499.00);

1 row created.

SQL> INSERT INTO Order_Details VALUES (2, 1001, 103, 2, 1999.00, 3998.00);

1 row created.

SQL> INSERT INTO Order_Details VALUES (3, 1002, 102, 1, 3999.00, 3999.00);

1 row created.
 
SQL> INSERT INTO Order_Details VALUES (4, 1003, 103, 1, 1999.00, 1999.00);

1 row created.

SQL> INSERT INTO Order_Details VALUES (5, 1004, 104, 1, 5999.00, 5999.00);

1 row created.

SQL> 
SQL> INSERT INTO Order_Details VALUES (6, 1005, 105, 1, 7499.00, 7499.00);

1 row created.
 
SQL> INSERT INTO Order_Details VALUES (7, 1006, 106, 1, 4599.00, 4599.00);

1 row created.
 
SQL> INSERT INTO Order_Details VALUES (8, 1007, 107, 1, 5299.00, 5299.00);

1 row created.

SQL> 
SQL> INSERT INTO Order_Details VALUES (9, 1008, 108, 1, 12999.00, 12999.00);

1 row created.

SQL> INSERT INTO Order_Details VALUES (10, 1009, 101, 1, 2499.00, 2499.00);

1 row created.
 
SQL> SELECT * FROM Orders;

  ORDER_ID CUSTOMER_ID ORDER_DAT      TOTAL ORDER_STATUS         TOTAL_AMOUNT                                                                                                                           
---------- ----------- --------- ---------- -------------------- ------------                                                                                                                           
      1001           1 01-SEP-26       6497 Delivered                    6497                                                                                                                           
      1002           2 02-SEP-26       3999 Shipped                      3999                                                                                                                           
      1003           3 03-SEP-26       1999 Processing                   1999                                                                                                                           
      1004           4 04-SEP-26       5999 Delivered                    5999                                                                                                                           
      1005           5 05-SEP-26       7499 Shipped                      7499                                                                                                                           
      1006           6 06-SEP-26       4599 Processing                   4599                                                                                                                           
      1007           7 07-SEP-26       5299 Delivered                    5299                                                                                                                           
      1008           8 08-SEP-26      12999 Shipped                     12999                                                                                                                           
      1009           9 09-SEP-26       2499 Processing                   2499                                                                                                                           

9 rows selected.

SQL> SELECT * FROM Order_Details;

ORDER_DETAIL_ID   ORDER_ID PRODUCT_ID   QUANTITY UNIT_PRICE   SUBTOTAL                                                                                                                                  
--------------- ---------- ---------- ---------- ---------- ----------                                                                                                                                  
              1       1001        101          1       2499       2499                                                                                                                                  
              2       1001        103          2       1999       3998                                                                                                                                  
              3       1002        102          1       3999       3999                                                                                                                                  
              4       1003        103          1       1999       1999                                                                                                                                  
              5       1004        104          1       5999       5999                                                                                                                                  
              6       1005        105          1       7499       7499                                                                                                                                  
              7       1006        106          1       4599       4599                                                                                                                                  
              8       1007        107          1       5299       5299                                                                                                                                  
              9       1008        108          1      12999      12999                                                                                                                                  
             10       1009        101          1       2499       2499                                                                                                                                  

10 rows selected.

SQL> UPDATE Orders
  2  SET Total = 6999.00,
  3  	 Total_Amount = 6999.00
  4  WHERE Order_ID = 1001;

1 row updated.

SQL> SELECT * FROM Orders WHERE Order_ID = 1001;

  ORDER_ID CUSTOMER_ID ORDER_DAT      TOTAL ORDER_STATUS         TOTAL_AMOUNT                                                                                                                           
---------- ----------- --------- ---------- -------------------- ------------                                                                                                                           
      1001           1 01-SEP-26       6999 Delivered                    6999                                                                                                                           

1 row selected.
 
SQL> UPDATE Orders
  2  SET Order_Date = TO_DATE('15-09-2026','DD-MM-YYYY')
  3  WHERE Order_ID = 1001;

1 row updated.

SQL> UPDATE Order_Details
  2  SET Quantity = 3,
  3  	 Subtotal = 5997.00
  4  WHERE Order_Detail_ID = 2;

1 row updated.

SQL> SELECT
  2  	 c.Customer_ID,
  3  	 c.First_Name,
  4  	 c.Last_Name,
  5  	 o.Order_ID,
  6  	 o.Order_Date,
  7  	 o.Total,
  8  	 o.Order_Status,
  9  	 o.Total_Amount
 10  FROM Customer c
 11  JOIN Orders o
 12  	 ON c.Customer_ID = o.Customer_ID
 13  ORDER BY c.Customer_ID;

CUSTOMER_ID FIRST_NAME                                         LAST_NAME                                            ORDER_ID ORDER_DAT      TOTAL ORDER_STATUS         TOTAL_AMOUNT                     
----------- -------------------------------------------------- -------------------------------------------------- ---------- --------- ---------- -------------------- ------------                     
          1 Renu                                               Srinivasan                                               1001 15-SEP-26       6999 Delivered                    6999                     
          2 Arjun                                              Kumar                                                    1002 02-SEP-26       3999 Shipped                      3999                     
          3 Priya                                              Kumar                                                    1003 03-SEP-26       1999 Processing                   1999                     
          4 Rahul                                              Sharma                                                   1004 04-SEP-26       5999 Delivered                    5999                     
          5 Keerthana                                          Mohan                                                    1005 05-SEP-26       7499 Shipped                      7499                     
          6 Nandhini                                           Ravi                                                     1006 06-SEP-26       4599 Processing                   4599                     
          7 Karthik                                            Prakash                                                  1007 07-SEP-26       5299 Delivered                    5299                     
          8 Swetha                                             Balaji                                                   1008 08-SEP-26      12999 Shipped                     12999                     
          9 Vignesh                                            Ganesh                                                   1009 09-SEP-26       2499 Processing                   2499                     

9 rows selected.

SQL> SELECT
  2  	 c.Customer_ID,
  3  	 c.First_Name,
  4  	 c.Last_Name,
  5  	 COUNT(o.Order_ID) AS Total_Orders,
  6  	 SUM(o.Total_Amount) AS Total_Amount
  7  FROM Customer c
  8  LEFT JOIN Orders o
  9  	 ON c.Customer_ID = o.Customer_ID
 10  GROUP BY
 11  	 c.Customer_ID,
 12  	 c.First_Name,
 13  	 c.Last_Name
 14  ORDER BY c.Customer_ID;

CUSTOMER_ID FIRST_NAME                                         LAST_NAME                                          TOTAL_ORDERS TOTAL_AMOUNT                                                             
----------- -------------------------------------------------- -------------------------------------------------- ------------ ------------                                                             
          1 Renu                                               Srinivasan                                                    1         6999                                                             
          2 Arjun                                              Kumar                                                         1         3999                                                             
          3 Priya                                              Kumar                                                         1         1999                                                             
          4 Rahul                                              Sharma                                                        1         5999                                                             
          5 Keerthana                                          Mohan                                                         1         7499                                                             
          6 Nandhini                                           Ravi                                                          1         4599                                                             
          7 Karthik                                            Prakash                                                       1         5299                                                             
          8 Swetha                                             Balaji                                                        1        12999                                                             
          9 Vignesh                                            Ganesh                                                        1         2499                                                             

9 rows selected.

SQL> COMMIT;

Commit complete.

