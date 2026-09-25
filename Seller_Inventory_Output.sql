SQL> CREATE TABLE Seller (
  2  	 Seller_ID    NUMBER PRIMARY KEY,
  3  	 Seller_Name  VARCHAR2(100) NOT NULL,
  4  	 Email	      VARCHAR2(100) NOT NULL UNIQUE,
  5  	 Contact_No   VARCHAR2(15) NOT NULL UNIQUE,
  6  	 Address      VARCHAR2(200) NOT NULL
  7  );

Table created.

SQL> CREATE TABLE Inventory (
  2  	 Inventory_ID	NUMBER PRIMARY KEY,
  3  	 Product_ID	NUMBER NOT NULL,
  4  	 Seller_ID	NUMBER NOT NULL,
  5  	 Stock_Quantity NUMBER NOT NULL,
  6  	 Stock_Status	VARCHAR2(20) NOT NULL,
  7  	 Last_Updated	DATE NOT NULL,
  8  	 CONSTRAINT FK_Inventory_Product
  9  	     FOREIGN KEY (Product_ID)
 10  	     REFERENCES Product(Product_ID),
 11  	 CONSTRAINT FK_Inventory_Seller
 12  	     FOREIGN KEY (Seller_ID)
 13  	     REFERENCES Seller(Seller_ID)
 14  );

Table created.

SQL> INSERT INTO Seller
  2  VALUES (1, 'TimeZone Watches', 'timezone@gmail.com', '9876500001', 'Chennai');

1 row created.

SQL> INSERT INTO Seller
  2  VALUES (2, 'Watch World', 'watchworld@gmail.com', '9876500002', 'Coimbatore');

1 row created.

SQL> 
SQL> INSERT INTO Seller
  2  VALUES (3, 'Wrist Point', 'wristpoint@gmail.com', '9876500003', 'Madurai');

1 row created.
 
SQL> INSERT INTO Seller
  2  VALUES (4, 'Elite Watches', 'elitewatches@gmail.com', '9876500004', 'Salem');

1 row created.
 
SQL> INSERT INTO Seller
  2  VALUES (5, 'Classic Time', 'classictime@gmail.com', '9876500005', 'Trichy');

1 row created.
 
SQL> INSERT INTO Seller
  2  VALUES (6, 'Smart Wrist', 'smartwrist@gmail.com', '9876500006', 'Erode');

1 row created.

SQL> INSERT INTO Seller
  2  VALUES (7, 'Royal Timepieces', 'royaltimepieces@gmail.com', '9876500007', 'Vellore');

1 row created.

SQL> INSERT INTO Seller
  2  VALUES (8, 'Watch Hub', 'watchhub@gmail.com', '9876500008', 'Thanjavur');

1 row created.

SQL> SELECT * FROM Seller;

 SELLER_ID SELLER_NAME                                                                                                                                                                                  
---------- ----------------------------------------------------------------------------------------------------                                                                                         
EMAIL                                                                                                CONTACT_NO                                                                                         
---------------------------------------------------------------------------------------------------- ---------------                                                                                    
ADDRESS                                                                                                                                                                                                 
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
         1 TimeZone Watches                                                                                                                                                                             
timezone@gmail.com                                                                                   9876500001                                                                                         
Chennai                                                                                                                                                                                                 
                                                                                                                                                                                                        
         2 Watch World                                                                                                                                                                                  
watchworld@gmail.com                                                                                 9876500002                                                                                         
Coimbatore                                                                                                                                                                                              
                                                                                                                                                                                                        
         3 Wrist Point                                                                                                                                                                                  
wristpoint@gmail.com                                                                                 9876500003                                                                                         
Madurai                                                                                                                                                                                                 
                                                                                                                                                                                                        
         4 Elite Watches                                                                                                                                                                                
elitewatches@gmail.com                                                                               9876500004                                                                                         
Salem                                                                                                                                                                                                   
                                                                                                                                                                                                        
         5 Classic Time                                                                                                                                                                                 
classictime@gmail.com                                                                                9876500005                                                                                         
Trichy                                                                                                                                                                                                  
                                                                                                                                                                                                        
         6 Smart Wrist                                                                                                                                                                                  
smartwrist@gmail.com                                                                                 9876500006                                                                                         
Erode                                                                                                                                                                                                   
                                                                                                                                                                                                        
         7 Royal Timepieces                                                                                                                                                                             
royaltimepieces@gmail.com                                                                            9876500007                                                                                         
Vellore                                                                                                                                                                                                 
                                                                                                                                                                                                        
         8 Watch Hub                                                                                                                                                                                    
watchhub@gmail.com                                                                                   9876500008                                                                                         
Thanjavur                                                                                                                                                                                               
                                                                                                                                                                                                        

8 rows selected.

SQL> INSERT INTO Inventory
  2  VALUES (1, 101, 1, 25, 'Available', TO_DATE('01-09-2026','DD-MM-YYYY'));

1 row created.

SQL> INSERT INTO Inventory
  2  VALUES (2, 102, 2, 18, 'Available', TO_DATE('02-09-2026','DD-MM-YYYY'));

1 row created.

SQL> INSERT INTO Inventory
  2  VALUES (3, 103, 3, 30, 'Available', TO_DATE('03-09-2026','DD-MM-YYYY'));

1 row created.

SQL> INSERT INTO Inventory
  2  VALUES (4, 104, 4, 15, 'Available', TO_DATE('04-09-2026','DD-MM-YYYY'));

1 row created.

SQL> INSERT INTO Inventory
  2  VALUES (5, 105, 5, 12, 'Available', TO_DATE('05-09-2026','DD-MM-YYYY'));

1 row created.


SQL> INSERT INTO Inventory
  2  VALUES (6, 106, 6, 20, 'Available', TO_DATE('06-09-2026','DD-MM-YYYY'));

1 row created.

SQL> INSERT INTO Inventory
  2  VALUES (7, 107, 7, 0, 'Unavailable', TO_DATE('07-09-2026','DD-MM-YYYY'));

1 row created.

SQL> INSERT INTO Inventory
  2  VALUES (8, 108, 8, 0, 'Unavailable', TO_DATE('08-09-2026','DD-MM-YYYY'));

1 row created.

SQL> SELECT * FROM Inventory;

INVENTORY_ID PRODUCT_ID  SELLER_ID STOCK_QUANTITY STOCK_STATUS         LAST_UPDA                                                                                                                        
------------ ---------- ---------- -------------- -------------------- ---------                                                                                                                        
           1        101          1             25 Available            01-SEP-26                                                                                                                        
           2        102          2             18 Available            02-SEP-26                                                                                                                        
           3        103          3             30 Available            03-SEP-26                                                                                                                        
           4        104          4             15 Available            04-SEP-26                                                                                                                        
           5        105          5             12 Available            05-SEP-26                                                                                                                        
           6        106          6             20 Available            06-SEP-26                                                                                                                        
           7        107          7              0 Unavailable          07-SEP-26                                                                                                                        
           8        108          8              0 Unavailable          08-SEP-26                                                                                                                        

8 rows selected.

SQL> SELECT
  2  	 s.Seller_ID,
  3  	 s.Seller_Name,
  4  	 p.Product_ID,
  5  	 p.Product_Name,
  6  	 i.Stock_Quantity,
  7  	 i.Stock_Status
  8  FROM Seller s
  9  JOIN Inventory i
 10  	 ON s.Seller_ID = i.Seller_ID
 11  JOIN Product p
 12  	 ON i.Product_ID = p.Product_ID
 13  ORDER BY s.Seller_Name;

 SELLER_ID SELLER_NAME                                                                                          PRODUCT_ID                                                                              
---------- ---------------------------------------------------------------------------------------------------- ----------                                                                              
PRODUCT_NAME                                                                                         STOCK_QUANTITY STOCK_STATUS                                                                        
---------------------------------------------------------------------------------------------------- -------------- --------------------                                                                
         5 Classic Time                                                                                                105                                                                              
Smart Active Watch                                                                                               12 Available                                                                           
                                                                                                                                                                                                        
         4 Elite Watches                                                                                               104                                                                              
Smart Fit Pro                                                                                                    15 Available                                                                           
                                                                                                                                                                                                        
         7 Royal Timepieces                                                                                            107                                                                              
Outdoor Pro Watch                                                                                                 0 Unavailable                                                                         
                                                                                                                                                                                                        
         6 Smart Wrist                                                                                                 106                                                                              
Sports Chronograph                                                                                               20 Available                                                                           
                                                                                                                                                                                                        
         1 TimeZone Watches                                                                                            101                                                                              
Classic Silver Watch                                                                                             25 Available                                                                           
                                                                                                                                                                                                        
         8 Watch Hub                                                                                                   108                                                                              
Royal Gold Edition                                                                                                0 Unavailable                                                                         
                                                                                                                                                                                                        
         2 Watch World                                                                                                 102                                                                              
Elegant Gold Watch                                                                                               18 Available                                                                           
                                                                                                                                                                                                        
         3 Wrist Point                                                                                                 103                                                                              
Digital Sport Watch                                                                                              30 Available                                                                           
                                                                                                                                                                                                        

8 rows selected.

SQL> SELECT
  2  	 p.Product_ID,
  3  	 p.Product_Name,
  4  	 i.Stock_Quantity,
  5  	 i.Stock_Status
  6  FROM Product p
  7  JOIN Inventory i
  8  	 ON p.Product_ID = i.Product_ID
  9  WHERE i.Stock_Status = 'Available';

PRODUCT_ID PRODUCT_NAME                                                                                         STOCK_QUANTITY STOCK_STATUS                                                             
---------- ---------------------------------------------------------------------------------------------------- -------------- --------------------                                                     
       101 Classic Silver Watch                                                                                             25 Available                                                                
       102 Elegant Gold Watch                                                                                               18 Available                                                                
       103 Digital Sport Watch                                                                                              30 Available                                                                
       104 Smart Fit Pro                                                                                                    15 Available                                                                
       105 Smart Active Watch                                                                                               12 Available                                                                
       106 Sports Chronograph                                                                                               20 Available                                                                

6 rows selected.

SQL> SELECT
  2  	 p.Product_ID,
  3  	 p.Product_Name,
  4  	 i.Stock_Quantity,
  5  	 i.Stock_Status
  6  FROM Product p
  7  JOIN Inventory i
  8  	 ON p.Product_ID = i.Product_ID
  9  WHERE i.Stock_Status = 'Unavailable';

PRODUCT_ID PRODUCT_NAME                                                                                         STOCK_QUANTITY STOCK_STATUS                                                             
---------- ---------------------------------------------------------------------------------------------------- -------------- --------------------                                                     
       107 Outdoor Pro Watch                                                                                                 0 Unavailable                                                              
       108 Royal Gold Edition                                                                                                0 Unavailable                                                              

2 rows selected.

SQL> UPDATE Inventory
  2  SET Stock_Quantity = 10,
  3  	 Stock_Status = 'Available',
  4  	 Last_Updated = TO_DATE('12-09-2026', 'DD-MM-YYYY')
  5  WHERE Product_ID = 107;

1 row updated.
 
SQL> SELECT * FROM Inventory WHERE Product_ID = 107;

INVENTORY_ID PRODUCT_ID  SELLER_ID STOCK_QUANTITY STOCK_STATUS         LAST_UPDA                                                                                                                        
------------ ---------- ---------- -------------- -------------------- ---------                                                                                                                        
           7        107          7             10 Available            12-SEP-26                                                                                                                        

1 row selected.

SQL> SELECT
  2  	 i.Inventory_ID,
  3  	 p.Product_ID,
  4  	 p.Product_Name,
  5  	 s.Seller_Name,
  6  	 i.Stock_Quantity,
  7  	 i.Stock_Status,
  8  	 i.Last_Updated
  9  FROM Inventory i
 10  JOIN Product p
 11  	 ON i.Product_ID = p.Product_ID
 12  JOIN Seller s
 13  	 ON i.Seller_ID = s.Seller_ID
 14  ORDER BY i.Inventory_ID;

INVENTORY_ID PRODUCT_ID PRODUCT_NAME                                                                                                                                                                    
------------ ---------- ----------------------------------------------------------------------------------------------------                                                                            
SELLER_NAME                                                                                          STOCK_QUANTITY STOCK_STATUS         LAST_UPDA                                                      
---------------------------------------------------------------------------------------------------- -------------- -------------------- ---------                                                      
           1        101 Classic Silver Watch                                                                                                                                                            
TimeZone Watches                                                                                                 25 Available            01-SEP-26                                                      
                                                                                                                                                                                                        
           2        102 Elegant Gold Watch                                                                                                                                                              
Watch World                                                                                                      18 Available            02-SEP-26                                                      
                                                                                                                                                                                                        
           3        103 Digital Sport Watch                                                                                                                                                             
Wrist Point                                                                                                      30 Available            03-SEP-26                                                      
                                                                                                                                                                                                        
           4        104 Smart Fit Pro                                                                                                                                                                   
Elite Watches                                                                                                    15 Available            04-SEP-26                                                      
                                                                                                                                                                                                        
           5        105 Smart Active Watch                                                                                                                                                              
Classic Time                                                                                                     12 Available            05-SEP-26                                                      
                                                                                                                                                                                                        
           6        106 Sports Chronograph                                                                                                                                                              
Smart Wrist                                                                                                      20 Available            06-SEP-26                                                      
                                                                                                                                                                                                        
           7        107 Outdoor Pro Watch                                                                                                                                                               
Royal Timepieces                                                                                                 10 Available            12-SEP-26                                                      
                                                                                                                                                                                                        
           8        108 Royal Gold Edition                                                                                                                                                              
Watch Hub                                                                                                         0 Unavailable          08-SEP-26                                                      
                                                                                                                                                                                                        

8 rows selected.

SQL> SELECT
  2  	 Stock_Status,
  3  	 COUNT(*) AS Product_Count
  4  FROM Inventory GROUP BY Stock_Status;

STOCK_STATUS         PRODUCT_COUNT                                                                                                                                                                      
-------------------- -------------                                                                                                                                                                      
Available                        7                                                                                                                                                                      
Unavailable                      1                                                                                                                                                                      

2 rows selected.

SQL> SELECT
  2  	 s.Seller_ID,
  3  	 s.Seller_Name,
  4  	 SUM(i.Stock_Quantity) AS Total_Stock
  5  FROM Seller s
  6  JOIN Inventory i
  7  	 ON s.Seller_ID = i.Seller_ID
  8  GROUP BY
  9  	 s.Seller_ID,
 10  	 s.Seller_Name
 11  ORDER BY s.Seller_Name;

 SELLER_ID SELLER_NAME                                                                                          TOTAL_STOCK                                                                             
---------- ---------------------------------------------------------------------------------------------------- -----------                                                                             
         5 Classic Time                                                                                                  12                                                                             
         4 Elite Watches                                                                                                 15                                                                             
         7 Royal Timepieces                                                                                              10                                                                             
         6 Smart Wrist                                                                                                   20                                                                             
         1 TimeZone Watches                                                                                              25                                                                             
         8 Watch Hub                                                                                                      0                                                                             
         2 Watch World                                                                                                   18                                                                             
         3 Wrist Point                                                                                                   30                                                                             

8 rows selected.

SQL> SELECT
  2  	 p.Product_ID,
  3  	 p.Product_Name,
  4  	 s.Seller_Name,
  5  	 i.Stock_Quantity,
  6  	 i.Stock_Status
  7  FROM Inventory i JOIN Product p ON i.Product_ID = p.Product_ID
  8  JOIN Seller s ON i.Seller_ID = s.Seller_ID
  9  WHERE i.Stock_Quantity = 0;

PRODUCT_ID PRODUCT_NAME                                                                                                                                                                                 
---------- ----------------------------------------------------------------------------------------------------                                                                                         
SELLER_NAME                                                                                          STOCK_QUANTITY STOCK_STATUS                                                                        
---------------------------------------------------------------------------------------------------- -------------- --------------------                                                                
       108 Royal Gold Edition                                                                                                                                                                           
Watch Hub                                                                                                         0 Unavailable                                                                         
                                                                                                                                                                                                        

1 row selected.

SQL> COMMIT;

Commit complete.

