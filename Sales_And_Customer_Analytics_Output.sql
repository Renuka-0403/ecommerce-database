SQL> SELECT COUNT(*) AS Total_Orders
  2  FROM Orders;

TOTAL_ORDERS                                                                                                                                                                                            
------------                                                                                                                                                                                            
           9                                                                                                                                                                                            

1 row selected.

SQL> SELECT SUM(Total_Amount) AS Total_Sales
  2  FROM Orders;

TOTAL_SALES                                                                                                                                                                                             
-----------                                                                                                                                                                                             
      51891                                                                                                                                                                                             

1 row selected.

SQL> SELECT AVG(Total_Amount) AS Average_Order_Amount
  2  FROM Orders;

AVERAGE_ORDER_AMOUNT                                                                                                                                                                                    
--------------------                                                                                                                                                                                    
          5765.66667                                                                                                                                                                                    

1 row selected.

SQL> SELECT MIN(Total_Amount) AS Lowest_Order_Amount
  2  FROM Orders;

LOWEST_ORDER_AMOUNT                                                                                                                                                                                     
-------------------                                                                                                                                                                                     
               1999                                                                                                                                                                                     

1 row selected.

SQL> 
SQL> SELECT MAX(Total_Amount) AS Highest_Order_Amount
  2  FROM Orders;

HIGHEST_ORDER_AMOUNT                                                                                                                                                                                    
--------------------                                                                                                                                                                                    
               12999                                                                                                                                                                                    

1 row selected.

SQL> SELECT SUM(Total_Amount) AS Total_Sales
  2  FROM Orders;

TOTAL_SALES                                                                                                                                                                                             
-----------                                                                                                                                                                                             
      51891                                                                                                                                                                                             

1 row selected.

SQL> SELECT c.Customer_ID,
  2  	    c.First_Name,
  3  	    c.Last_Name,
  4  	    SUM(o.Total_Amount) AS Total_Purchase_Amount
  5  FROM Customer c
  6  INNER JOIN Orders o
  7  ON c.Customer_ID = o.Customer_ID
  8  GROUP BY c.Customer_ID,
  9  	      c.First_Name,
 10  	      c.Last_Name
 11  ORDER BY Total_Purchase_Amount DESC;

CUSTOMER_ID FIRST_NAME                                         LAST_NAME                                          TOTAL_PURCHASE_AMOUNT                                                                 
----------- -------------------------------------------------- -------------------------------------------------- ---------------------                                                                 
          8 Swetha                                             Balaji                                                             12999                                                                 
          5 Keerthana                                          Mohan                                                               7499                                                                 
          1 Renu                                               Srinivasan                                                          6999                                                                 
          4 Rahul                                              Sharma                                                              5999                                                                 
          7 Karthik                                            Prakash                                                             5299                                                                 
          6 Nandhini                                           Ravi                                                                4599                                                                 
          2 Arjun                                              Kumar                                                               3999                                                                 
          9 Vignesh                                            Ganesh                                                              2499                                                                 
          3 Priya                                              Kumar                                                               1999                                                                 

9 rows selected.
 
SQL> SELECT c.Customer_ID,
  2  	    c.First_Name,
  3  	    c.Last_Name,
  4  	    SUM(o.Total_Amount) AS Total_Purchase_Amount
  5  FROM Customer c
  6  INNER JOIN Orders o
  7  ON c.Customer_ID = o.Customer_ID
  8  GROUP BY c.Customer_ID,
  9  	      c.First_Name,
 10  	      c.Last_Name
 11  ORDER BY Total_Purchase_Amount DESC;

CUSTOMER_ID FIRST_NAME                                         LAST_NAME                                          TOTAL_PURCHASE_AMOUNT                                                                 
----------- -------------------------------------------------- -------------------------------------------------- ---------------------                                                                 
          8 Swetha                                             Balaji                                                             12999                                                                 
          5 Keerthana                                          Mohan                                                               7499                                                                 
          1 Renu                                               Srinivasan                                                          6999                                                                 
          4 Rahul                                              Sharma                                                              5999                                                                 
          7 Karthik                                            Prakash                                                             5299                                                                 
          6 Nandhini                                           Ravi                                                                4599                                                                 
          2 Arjun                                              Kumar                                                               3999                                                                 
          9 Vignesh                                            Ganesh                                                              2499                                                                 
          3 Priya                                              Kumar                                                               1999                                                                 

9 rows selected.
 
SQL> SELECT p.Product_ID,
  2  	    p.Product_Name,
  3  	    SUM(od.Quantity) AS Total_Quantity_Sold
  4  FROM Product p
  5  INNER JOIN Order_Details od
  6  ON p.Product_ID = od.Product_ID
  7  GROUP BY p.Product_ID,
  8  	      p.Product_Name
  9  ORDER BY Total_Quantity_Sold DESC;

PRODUCT_ID PRODUCT_NAME                                                                                         TOTAL_QUANTITY_SOLD                                                                     
---------- ---------------------------------------------------------------------------------------------------- -------------------                                                                     
       103 Digital Sport Watch                                                                                                    4                                                                     
       101 Classic Silver Watch                                                                                                   2                                                                     
       105 Smart Active Watch                                                                                                     1                                                                     
       106 Sports Chronograph                                                                                                     1                                                                     
       107 Outdoor Pro Watch                                                                                                      1                                                                     
       108 Royal Gold Edition                                                                                                     1                                                                     
       102 Elegant Gold Watch                                                                                                     1                                                                     
       104 Smart Fit Pro                                                                                                          1                                                                     

8 rows selected.
 
SQL> SELECT p.Product_ID,
  2  	    p.Product_Name,
  3  	    SUM(od.Quantity) AS Total_Quantity_Sold,
  4  	    SUM(od.Subtotal) AS Total_Sales_Amount
  5  FROM Product p
  6  INNER JOIN Order_Details od
  7  ON p.Product_ID = od.Product_ID
  8  GROUP BY p.Product_ID,
  9  	      p.Product_Name
 10  ORDER BY Total_Sales_Amount DESC;

PRODUCT_ID PRODUCT_NAME                                                                                         TOTAL_QUANTITY_SOLD TOTAL_SALES_AMOUNT                                                  
---------- ---------------------------------------------------------------------------------------------------- ------------------- ------------------                                                  
       108 Royal Gold Edition                                                                                                     1              12999                                                  
       103 Digital Sport Watch                                                                                                    4               7996                                                  
       105 Smart Active Watch                                                                                                     1               7499                                                  
       104 Smart Fit Pro                                                                                                          1               5999                                                  
       107 Outdoor Pro Watch                                                                                                      1               5299                                                  
       101 Classic Silver Watch                                                                                                   2               4998                                                  
       106 Sports Chronograph                                                                                                     1               4599                                                  
       102 Elegant Gold Watch                                                                                                     1               3999                                                  

8 rows selected.
 
SQL> SELECT c.Category_ID,
  2  	    c.Category_Name,
  3  	    SUM(od.Quantity) AS Total_Quantity_Sold,
  4  	    SUM(od.Subtotal) AS Total_Sales_Amount
  5  FROM Category c
  6  INNER JOIN Product p
  7  ON c.Category_ID = p.Category_ID
  8  INNER JOIN Order_Details od
  9  ON p.Product_ID = od.Product_ID
 10  GROUP BY c.Category_ID,
 11  	      c.Category_Name
 12  ORDER BY Total_Sales_Amount DESC;

CATEGORY_ID CATEGORY_NAME                                      TOTAL_QUANTITY_SOLD TOTAL_SALES_AMOUNT                                                                                                   
----------- -------------------------------------------------- ------------------- ------------------                                                                                                   
          3 Smart Watch                                                          2              13498                                                                                                   
          5 Luxury                                                               1              12999                                                                                                   
          4 Sports                                                               2               9898                                                                                                   
          1 Analog                                                               3               8997                                                                                                   
          2 Digital                                                              4               7996                                                                                                   

5 rows selected.
 
SQL> SELECT cu.Customer_ID,
  2  	    cu.First_Name,
  3  	    cu.Last_Name,
  4  	    o.Order_ID,
  5  	    o.Order_Date,
  6  	    p.Product_ID,
  7  	    p.Product_Name,
  8  	    cat.Category_Name,
  9  	    od.Quantity,
 10  	    od.Unit_Price,
 11  	    od.Subtotal
 12  FROM Customer cu
 13  INNER JOIN Orders o
 14  ON cu.Customer_ID = o.Customer_ID
 15  INNER JOIN Order_Details od
 16  ON o.Order_ID = od.Order_ID
 17  INNER JOIN Product p
 18  ON od.Product_ID = p.Product_ID
 19  INNER JOIN Category cat
 20  ON p.Category_ID = cat.Category_ID
 21  ORDER BY cu.Customer_ID,
 22  	      o.Order_ID;

CUSTOMER_ID FIRST_NAME                                         LAST_NAME                                            ORDER_ID ORDER_DAT PRODUCT_ID                                                       
----------- -------------------------------------------------- -------------------------------------------------- ---------- --------- ----------                                                       
PRODUCT_NAME                                                                                         CATEGORY_NAME                                        QUANTITY UNIT_PRICE   SUBTOTAL                
---------------------------------------------------------------------------------------------------- -------------------------------------------------- ---------- ---------- ----------                
          1 Renu                                               Srinivasan                                               1001 15-SEP-26        101                                                       
Classic Silver Watch                                                                                 Analog                                                      1       2499       2499                
                                                                                                                                                                                                        
          1 Renu                                               Srinivasan                                               1001 15-SEP-26        103                                                       
Digital Sport Watch                                                                                  Digital                                                     3       1999       5997                
                                                                                                                                                                                                        
          2 Arjun                                              Kumar                                                    1002 02-SEP-26        102                                                       
Elegant Gold Watch                                                                                   Analog                                                      1       3999       3999                
                                                                                                                                                                                                        
          3 Priya                                              Kumar                                                    1003 03-SEP-26        103                                                       
Digital Sport Watch                                                                                  Digital                                                     1       1999       1999                
                                                                                                                                                                                                        
          4 Rahul                                              Sharma                                                   1004 04-SEP-26        104                                                       
Smart Fit Pro                                                                                        Smart Watch                                                 1       5999       5999                
                                                                                                                                                                                                        
          5 Keerthana                                          Mohan                                                    1005 05-SEP-26        105                                                       
Smart Active Watch                                                                                   Smart Watch                                                 1       7499       7499                
                                                                                                                                                                                                        
          6 Nandhini                                           Ravi                                                     1006 06-SEP-26        106                                                       
Sports Chronograph                                                                                   Sports                                                      1       4599       4599                
                                                                                                                                                                                                        
          7 Karthik                                            Prakash                                                  1007 07-SEP-26        107                                                       
Outdoor Pro Watch                                                                                    Sports                                                      1       5299       5299                
                                                                                                                                                                                                        
          8 Swetha                                             Balaji                                                   1008 08-SEP-26        108                                                       
Royal Gold Edition                                                                                   Luxury                                                      1      12999      12999                
                                                                                                                                                                                                        
          9 Vignesh                                            Ganesh                                                   1009 09-SEP-26        101                                                       
Classic Silver Watch                                                                                 Analog                                                      1       2499       2499                
                                                                                                                                                                                                        

10 rows selected.

SQL> COMMIT;

Commit complete.


