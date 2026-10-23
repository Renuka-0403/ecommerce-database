SQL> SELECT * FROM Product;

PRODUCT_ID PRODUCT_NAME                                                                                           BRAND_ID CATEGORY_ID      PRICE                                                       
---------- ---------------------------------------------------------------------------------------------------- ---------- ----------- ----------                                                       
COLORS                                                                                               STRAP_MATERIAL                                                                                     
---------------------------------------------------------------------------------------------------- --------------------------------------------------                                                 
DIAL_COLOR                                         WATER_RESISTANCE                                        STOCK                                                                                        
-------------------------------------------------- -------------------------------------------------- ----------                                                                                        
       101 Classic Silver Watch                                                                                          1           1       2799                                                       
Silver, Black                                                                                        Leather                                                                                            
Black                                              50m                                                        30                                                                                        
                                                                                                                                                                                                        
       102 Elegant Gold Watch                                                                                            2           1       4299                                                       
Gold                                                                                                 Stainless Steel                                                                                    
White                                              50m                                                        18                                                                                        
                                                                                                                                                                                                        
       103 Digital Sport Watch                                                                                           3           2       1999                                                       
Black, Blue                                                                                          Silicone                                                                                           
Black                                              100m                                                       30                                                                                        
                                                                                                                                                                                                        
       104 Smart Fit Pro                                                                                                 4           3       5999                                                       
Black, Grey                                                                                          Silicone                                                                                           
Black                                              50m                                                        15                                                                                        
                                                                                                                                                                                                        
       105 Smart Active Watch                                                                                            5           3       7499                                                       
Black, Green                                                                                         Silicone                                                                                           
Black                                              50m                                                        12                                                                                        
                                                                                                                                                                                                        
       106 Sports Chronograph                                                                                            6           4       4599                                                       
Black, Red                                                                                           Stainless Steel                                                                                    
Black                                              100m                                                       20                                                                                        
                                                                                                                                                                                                        
       107 Outdoor Pro Watch                                                                                             7           4       5299                                                       
Black, Orange                                                                                        Silicone                                                                                           
Black                                              200m                                                       14                                                                                        
                                                                                                                                                                                                        
       108 Royal Gold Edition                                                                                            8           5      12999                                                       
Gold                                                                                                 Stainless Steel                                                                                    
Blue                                               100m                                                        8                                                                                        
                                                                                                                                                                                                        
8 rows selected.

SQL> SELECT Product_ID, Product_Name, Price, Stock
  2  FROM Product;

PRODUCT_ID PRODUCT_NAME                                                                                              PRICE      STOCK                                                                   
---------- ---------------------------------------------------------------------------------------------------- ---------- ----------                                                                   
       101 Classic Silver Watch                                                                                       2799         30                                                                   
       102 Elegant Gold Watch                                                                                         4299         18                                                                   
       103 Digital Sport Watch                                                                                        1999         30                                                                   
       104 Smart Fit Pro                                                                                              5999         15                                                                   
       105 Smart Active Watch                                                                                         7499         12                                                                   
       106 Sports Chronograph                                                                                         4599         20                                                                   
       107 Outdoor Pro Watch                                                                                          5299         14                                                                   
       108 Royal Gold Edition                                                                                        12999          8                                                                   

8 rows selected.
 
SQL> SELECT *
  2  FROM Product
  3  WHERE Price < 5000;

PRODUCT_ID PRODUCT_NAME                                                                                           BRAND_ID CATEGORY_ID      PRICE                                                       
---------- ---------------------------------------------------------------------------------------------------- ---------- ----------- ----------                                                       
COLORS                                                                                               STRAP_MATERIAL                                                                                     
---------------------------------------------------------------------------------------------------- --------------------------------------------------                                                 
DIAL_COLOR                                         WATER_RESISTANCE                                        STOCK                                                                                        
-------------------------------------------------- -------------------------------------------------- ----------                                                                                        
       101 Classic Silver Watch                                                                                          1           1       2799                                                       
Silver, Black                                                                                        Leather                                                                                            
Black                                              50m                                                        30                                                                                        
                                                                                                                                                                                                        
       102 Elegant Gold Watch                                                                                            2           1       4299                                                       
Gold                                                                                                 Stainless Steel                                                                                    
White                                              50m                                                        18                                                                                        
                                                                                                                                                                                                        
       103 Digital Sport Watch                                                                                           3           2       1999                                                       
Black, Blue                                                                                          Silicone                                                                                           
Black                                              100m                                                       30                                                                                        
                                                                                                                                                                                                        
       106 Sports Chronograph                                                                                            6           4       4599                                                       
Black, Red                                                                                           Stainless Steel                                                                                    
Black                                              100m                                                       20                                                                                        
                                                                                                                                                                                                        
4 rows selected.
 
SQL> SELECT *
  2  FROM Product
  3  WHERE Price > 5000;

PRODUCT_ID PRODUCT_NAME                                                                                           BRAND_ID CATEGORY_ID      PRICE                                                       
---------- ---------------------------------------------------------------------------------------------------- ---------- ----------- ----------                                                       
COLORS                                                                                               STRAP_MATERIAL                                                                                     
---------------------------------------------------------------------------------------------------- --------------------------------------------------                                                 
DIAL_COLOR                                         WATER_RESISTANCE                                        STOCK                                                                                        
-------------------------------------------------- -------------------------------------------------- ----------                                                                                        
       104 Smart Fit Pro                                                                                                 4           3       5999                                                       
Black, Grey                                                                                          Silicone                                                                                           
Black                                              50m                                                        15                                                                                        
                                                                                                                                                                                                        
       105 Smart Active Watch                                                                                            5           3       7499                                                       
Black, Green                                                                                         Silicone                                                                                           
Black                                              50m                                                        12                                                                                        
                                                                                                                                                                                                        
       107 Outdoor Pro Watch                                                                                             7           4       5299                                                       
Black, Orange                                                                                        Silicone                                                                                           
Black                                              200m                                                       14                                                                                        
                                                                                                                                                                                                        
       108 Royal Gold Edition                                                                                            8           5      12999                                                       
Gold                                                                                                 Stainless Steel                                                                                    
Blue                                               100m                                                        8                                                                                        
                                                                                                                                                                                                        
4 rows selected.

SQL> SELECT Product_ID, Product_Name, Price
  2  FROM Product
  3  ORDER BY Price ASC;

PRODUCT_ID PRODUCT_NAME                                                                                              PRICE                                                                              
---------- ---------------------------------------------------------------------------------------------------- ----------                                                                              
       103 Digital Sport Watch                                                                                        1999                                                                              
       101 Classic Silver Watch                                                                                       2799                                                                              
       102 Elegant Gold Watch                                                                                         4299                                                                              
       106 Sports Chronograph                                                                                         4599                                                                              
       107 Outdoor Pro Watch                                                                                          5299                                                                              
       104 Smart Fit Pro                                                                                              5999                                                                              
       105 Smart Active Watch                                                                                         7499                                                                              
       108 Royal Gold Edition                                                                                        12999                                                                              

8 rows selected.
 
SQL> SELECT Product_ID, Product_Name, Price
  2  FROM Product
  3  ORDER BY Price DESC;

PRODUCT_ID PRODUCT_NAME                                                                                              PRICE                                                                              
---------- ---------------------------------------------------------------------------------------------------- ----------                                                                              
       108 Royal Gold Edition                                                                                        12999                                                                              
       105 Smart Active Watch                                                                                         7499                                                                              
       104 Smart Fit Pro                                                                                              5999                                                                              
       107 Outdoor Pro Watch                                                                                          5299                                                                              
       106 Sports Chronograph                                                                                         4599                                                                              
       102 Elegant Gold Watch                                                                                         4299                                                                              
       101 Classic Silver Watch                                                                                       2799                                                                              
       103 Digital Sport Watch                                                                                        1999                                                                              

8 rows selected.

SQL> SELECT DISTINCT Category_ID
  2  FROM Product;

CATEGORY_ID                                                                                                                                                                                             
-----------                                                                                                                                                                                             
          1                                                                                                                                                                                             
          2                                                                                                                                                                                             
          3                                                                                                                                                                                             
          4                                                                                                                                                                                             
          5                                                                                                                                                                                             

5 rows selected.
 
SQL> SELECT Product_ID, Product_Name, Price
  2  FROM Product
  3  WHERE Price BETWEEN 2000 AND 5000;

PRODUCT_ID PRODUCT_NAME                                                                                              PRICE                                                                              
---------- ---------------------------------------------------------------------------------------------------- ----------                                                                              
       101 Classic Silver Watch                                                                                       2799                                                                              
       102 Elegant Gold Watch                                                                                         4299                                                                              
       106 Sports Chronograph                                                                                         4599                                                                              

3 rows selected.
 
SQL> SELECT Product_ID, Product_Name, Price, Stock
  2  FROM Product
  3  WHERE Category_ID = 1;

PRODUCT_ID PRODUCT_NAME                                                                                              PRICE      STOCK                                                                   
---------- ---------------------------------------------------------------------------------------------------- ---------- ----------                                                                   
       101 Classic Silver Watch                                                                                       2799         30                                                                   
       102 Elegant Gold Watch                                                                                         4299         18                                                                   

2 rows selected.
 
SQL> SELECT * FROM Customer;

CUSTOMER_ID FIRST_NAME                                         LAST_NAME                                                                                                                                
----------- -------------------------------------------------- --------------------------------------------------                                                                                       
EMAIL                                                                                                PHONE           DATE_OF_B        AGE                                                               
---------------------------------------------------------------------------------------------------- --------------- --------- ----------                                                               
ADDRESS                                                                                                                                                                                                 
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
          1 Renu                                               Srinivasan                                                                                                                               
renu@gmail.com                                                                                       9123456789      15-JUN-05         20                                                               
Chennai                                                                                                                                                                                                 
                                                                                                                                                                                                        
          2 Arjun                                              Kumar                                                                                                                                    
arjun.kumar@gmail.com                                                                                9876501234      22-SEP-03         22                                                               
Anna Nagar, Chennai                                                                                                                                                                                     
                                                                                                                                                                                                        
          3 Priya                                              Kumar                                                                                                                                    
priya.new@gmail.com                                                                                  9876512345      08-DEC-03         22                                                               
Madurai                                                                                                                                                                                                 
                                                                                                                                                                                                        
          4 Rahul                                              Sharma                                                                                                                                   
rahul.sharma@gmail.com                                                                               9876523456      10-APR-02         23                                                               
Salem                                                                                                                                                                                                   
                                                                                                                                                                                                        
          5 Keerthana                                          Mohan                                                                                                                                    
keerthana.mohan@gmail.com                                                                            9876534567      18-FEB-05         20                                                               
Trichy                                                                                                                                                                                                  
                                                                                                                                                                                                        
          6 Nandhini                                           Ravi                                                                                                                                     
nandhini.ravi@gmail.com                                                                              9876545678      30-JUL-03         23                                                               
Erode                                                                                                                                                                                                   
                                                                                                                                                                                                        
          7 Karthik                                            Prakash                                                                                                                                  
karthik.prakash@gmail.com                                                                            9876556789      05-NOV-02         23                                                               
Vellore                                                                                                                                                                                                 
                                                                                                                                                                                                        
          8 Swetha                                             Balaji                                                                                                                                   
swetha.balaji@gmail.com                                                                              9876567890      12-SEP-05         20                                                               
Tirunelveli                                                                                                                                                                                             
                                                                                                                                                                                                        
          9 Vignesh                                            Ganesh                                                                                                                                   
vignesh.ganesh@gmail.com                                                                             9876578901      25-MAR-02         23                                                               
Thanjavur                                                                                                                                                                                               
                                                                                                                                                                                                        
9 rows selected.

SQL> SELECT *
  2  FROM Customer
  3  WHERE Customer_ID = 1;

CUSTOMER_ID FIRST_NAME                                         LAST_NAME                                                                                                                                
----------- -------------------------------------------------- --------------------------------------------------                                                                                       
EMAIL                                                                                                PHONE           DATE_OF_B        AGE                                                               
---------------------------------------------------------------------------------------------------- --------------- --------- ----------                                                               
ADDRESS                                                                                                                                                                                                 
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
          1 Renu                                               Srinivasan                                                                                                                               
renu@gmail.com                                                                                       9123456789      15-JUN-05         20                                                               
Chennai                                                                                                                                                                                                 
                                                                                                                                                                                                        

1 row selected.
 
SQL> SELECT Product_ID, Product_Name, Price, Stock
  2  FROM Product
  3  WHERE Price < 5000
  4  AND Stock > 15;

PRODUCT_ID PRODUCT_NAME                                                                                              PRICE      STOCK                                                                   
---------- ---------------------------------------------------------------------------------------------------- ---------- ----------                                                                   
       101 Classic Silver Watch                                                                                       2799         30                                                                   
       102 Elegant Gold Watch                                                                                         4299         18                                                                   
       103 Digital Sport Watch                                                                                        1999         30                                                                   
       106 Sports Chronograph                                                                                         4599         20                                                                   

4 rows selected.
 
SQL> SELECT Product_ID, Product_Name, Category_ID, Price
  2  FROM Product
  3  WHERE Category_ID = 1
  4  OR Category_ID = 2;

PRODUCT_ID PRODUCT_NAME                                                                                         CATEGORY_ID      PRICE                                                                  
---------- ---------------------------------------------------------------------------------------------------- ----------- ----------                                                                  
       101 Classic Silver Watch                                                                                           1       2799                                                                  
       102 Elegant Gold Watch                                                                                             1       4299                                                                  
       103 Digital Sport Watch                                                                                            2       1999                                                                  

3 rows selected.
 
SQL> SELECT Product_ID, Product_Name, Category_ID, Price
  2  FROM Product
  3  WHERE Category_ID IN (1, 2, 3);

PRODUCT_ID PRODUCT_NAME                                                                                         CATEGORY_ID      PRICE                                                                  
---------- ---------------------------------------------------------------------------------------------------- ----------- ----------                                                                  
       101 Classic Silver Watch                                                                                           1       2799                                                                  
       102 Elegant Gold Watch                                                                                             1       4299                                                                  
       103 Digital Sport Watch                                                                                            2       1999                                                                  
       104 Smart Fit Pro                                                                                                  3       5999                                                                  
       105 Smart Active Watch                                                                                             3       7499                                                                  

5 rows selected.
 
SQL> SELECT Product_ID, Product_Name, Price
  2  FROM Product
  3  WHERE Price BETWEEN 3000 AND 8000;

PRODUCT_ID PRODUCT_NAME                                                                                              PRICE                                                                              
---------- ---------------------------------------------------------------------------------------------------- ----------                                                                              
       102 Elegant Gold Watch                                                                                         4299                                                                              
       104 Smart Fit Pro                                                                                              5999                                                                              
       105 Smart Active Watch                                                                                         7499                                                                              
       106 Sports Chronograph                                                                                         4599                                                                              
       107 Outdoor Pro Watch                                                                                          5299                                                                              

5 rows selected.
 
SQL> SELECT Product_ID, Product_Name, Price, Stock
  2  FROM Product
  3  ORDER BY Price DESC;

PRODUCT_ID PRODUCT_NAME                                                                                              PRICE      STOCK                                                                   
---------- ---------------------------------------------------------------------------------------------------- ---------- ----------                                                                   
       108 Royal Gold Edition                                                                                        12999          8                                                                   
       105 Smart Active Watch                                                                                         7499         12                                                                   
       104 Smart Fit Pro                                                                                              5999         15                                                                   
       107 Outdoor Pro Watch                                                                                          5299         14                                                                   
       106 Sports Chronograph                                                                                         4599         20                                                                   
       102 Elegant Gold Watch                                                                                         4299         18                                                                   
       101 Classic Silver Watch                                                                                       2799         30                                                                   
       103 Digital Sport Watch                                                                                        1999         30                                                                   

8 rows selected.

SQL> SELECT c.Customer_ID,
  2  	    c.First_Name,
  3  	    c.Last_Name,
  4  	    o.Order_ID,
  5  	    o.Order_Date,
  6  	    o.Order_Status,
  7  	    o.Total_Amount
  8  FROM Customer c
  9  JOIN Orders o
 10  ON c.Customer_ID = o.Customer_ID
 11  ORDER BY c.Customer_ID, o.Order_ID;

CUSTOMER_ID FIRST_NAME                                         LAST_NAME                                            ORDER_ID ORDER_DAT ORDER_STATUS         TOTAL_AMOUNT                                
----------- -------------------------------------------------- -------------------------------------------------- ---------- --------- -------------------- ------------                                
          1 Renu                                               Srinivasan                                               1001 15-SEP-26 Delivered                    6999                                
          2 Arjun                                              Kumar                                                    1002 02-SEP-26 Shipped                      3999                                
          3 Priya                                              Kumar                                                    1003 03-SEP-26 Processing                   1999                                
          4 Rahul                                              Sharma                                                   1004 04-SEP-26 Delivered                    5999                                
          5 Keerthana                                          Mohan                                                    1005 05-SEP-26 Shipped                      7499                                
          6 Nandhini                                           Ravi                                                     1006 06-SEP-26 Processing                   4599                                
          7 Karthik                                            Prakash                                                  1007 07-SEP-26 Delivered                    5299                                
          8 Swetha                                             Balaji                                                   1008 08-SEP-26 Shipped                     12999                                
          9 Vignesh                                            Ganesh                                                   1009 09-SEP-26 Processing                   2499                                

9 rows selected.
 
SQL> SELECT p.Product_ID,
  2  	    p.Product_Name,
  3  	    o.Order_ID,
  4  	    o.Order_Date,
  5  	    od.Quantity,
  6  	    od.Unit_Price,
  7  	    od.Subtotal
  8  FROM Product p
  9  JOIN Order_Details od
 10  ON p.Product_ID = od.Product_ID
 11  JOIN Orders o
 12  ON od.Order_ID = o.Order_ID
 13  ORDER BY p.Product_ID, o.Order_ID;

PRODUCT_ID PRODUCT_NAME                                                                                           ORDER_ID ORDER_DAT   QUANTITY UNIT_PRICE   SUBTOTAL                                   
---------- ---------------------------------------------------------------------------------------------------- ---------- --------- ---------- ---------- ----------                                   
       101 Classic Silver Watch                                                                                       1001 15-SEP-26          1       2499       2499                                   
       101 Classic Silver Watch                                                                                       1009 09-SEP-26          1       2499       2499                                   
       102 Elegant Gold Watch                                                                                         1002 02-SEP-26          1       3999       3999                                   
       103 Digital Sport Watch                                                                                        1001 15-SEP-26          3       1999       5997                                   
       103 Digital Sport Watch                                                                                        1003 03-SEP-26          1       1999       1999                                   
       104 Smart Fit Pro                                                                                              1004 04-SEP-26          1       5999       5999                                   
       105 Smart Active Watch                                                                                         1005 05-SEP-26          1       7499       7499                                   
       106 Sports Chronograph                                                                                         1006 06-SEP-26          1       4599       4599                                   
       107 Outdoor Pro Watch                                                                                          1007 07-SEP-26          1       5299       5299                                   
       108 Royal Gold Edition                                                                                         1008 08-SEP-26          1      12999      12999                                   

10 rows selected.

SQL> SELECT c.Customer_ID,
  2  	    c.First_Name,
  3  	    c.Last_Name,
  4  	    COUNT(o.Order_ID) AS Total_Orders
  5  FROM Customer c
  6  LEFT JOIN Orders o
  7  ON c.Customer_ID = o.Customer_ID
  8  GROUP BY c.Customer_ID, c.First_Name, c.Last_Name
  9  ORDER BY c.Customer_ID;

CUSTOMER_ID FIRST_NAME                                         LAST_NAME                                          TOTAL_ORDERS                                                                          
----------- -------------------------------------------------- -------------------------------------------------- ------------                                                                          
          1 Renu                                               Srinivasan                                                    1                                                                          
          2 Arjun                                              Kumar                                                         1                                                                          
          3 Priya                                              Kumar                                                         1                                                                          
          4 Rahul                                              Sharma                                                        1                                                                          
          5 Keerthana                                          Mohan                                                         1                                                                          
          6 Nandhini                                           Ravi                                                          1                                                                          
          7 Karthik                                            Prakash                                                       1                                                                          
          8 Swetha                                             Balaji                                                        1                                                                          
          9 Vignesh                                            Ganesh                                                        1                                                                          

9 rows selected.
 
SQL> SELECT c.Customer_ID,
  2  	    c.First_Name,
  3  	    c.Last_Name,
  4  	    NVL(SUM(o.Total_Amount), 0) AS Total_Purchase_Amount
  5  FROM Customer c
  6  LEFT JOIN Orders o
  7  ON c.Customer_ID = o.Customer_ID
  8  GROUP BY c.Customer_ID, c.First_Name, c.Last_Name
  9  ORDER BY c.Customer_ID;

CUSTOMER_ID FIRST_NAME                                         LAST_NAME                                          TOTAL_PURCHASE_AMOUNT                                                                 
----------- -------------------------------------------------- -------------------------------------------------- ---------------------                                                                 
          1 Renu                                               Srinivasan                                                          6999                                                                 
          2 Arjun                                              Kumar                                                               3999                                                                 
          3 Priya                                              Kumar                                                               1999                                                                 
          4 Rahul                                              Sharma                                                              5999                                                                 
          5 Keerthana                                          Mohan                                                               7499                                                                 
          6 Nandhini                                           Ravi                                                                4599                                                                 
          7 Karthik                                            Prakash                                                             5299                                                                 
          8 Swetha                                             Balaji                                                             12999                                                                 
          9 Vignesh                                            Ganesh                                                              2499                                                                 

9 rows selected.

SQL> COMMIT;

Commit complete.
