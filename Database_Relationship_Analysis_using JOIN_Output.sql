SQL> SELECT c.Customer_ID,
  2  	    c.First_Name,
  3  	    c.Last_Name,
  4  	    o.Order_ID,
  5  	    o.Order_Date,
  6  	    o.Order_Status,
  7  	    o.Total_Amount
  8  FROM Customer c
  9  INNER JOIN Orders o
 10  ON c.Customer_ID = o.Customer_ID
 11  ORDER BY c.Customer_ID;

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

SQL> SELECT o.Order_ID,
  2  	    o.Order_Date,
  3  	    o.Order_Status,
  4  	    p.Payment_ID,
  5  	    p.Payment_Mode,
  6  	    p.Payment_Date,
  7  	    p.Payment_Amount,
  8  	    p.Payment_Status
  9  FROM Orders o
 10  INNER JOIN Payment p
 11  ON o.Order_ID = p.Order_ID
 12  ORDER BY o.Order_ID;

  ORDER_ID ORDER_DAT ORDER_STATUS         PAYMENT_ID PAYMENT_MODE         PAYMENT_D PAYMENT_AMOUNT PAYMENT_STATUS                                                                                       
---------- --------- -------------------- ---------- -------------------- --------- -------------- --------------------                                                                                 
      1001 15-SEP-26 Delivered                   501 UPI                  01-SEP-26           6497 Successful                                                                                           
      1002 02-SEP-26 Shipped                     502 Credit Card          02-SEP-26           3999 Successful                                                                                           
      1003 03-SEP-26 Processing                  503 Debit Card           03-SEP-26           1999 Successful                                                                                           
      1004 04-SEP-26 Delivered                   504 UPI                  04-SEP-26           5999 Successful                                                                                           
      1005 05-SEP-26 Shipped                     505 Net Banking          05-SEP-26           7499 Successful                                                                                           
      1006 06-SEP-26 Processing                  506 UPI                  06-SEP-26           4599 Failed                                                                                               
      1007 07-SEP-26 Delivered                   507 Credit Card          07-SEP-26           5299 Successful                                                                                           
      1008 08-SEP-26 Shipped                     508 Debit Card           08-SEP-26          12999 Successful                                                                                           
      1009 09-SEP-26 Processing                  509 UPI                  09-SEP-26           2499 Successful                                                                                           

9 rows selected.

SQL> SELECT p.Product_ID,
  2  	    p.Product_Name,
  3  	    od.Order_ID,
  4  	    od.Quantity,
  5  	    od.Unit_Price,
  6  	    od.Subtotal
  7  FROM Product p
  8  INNER JOIN Order_Details od
  9  ON p.Product_ID = od.Product_ID
 10  ORDER BY p.Product_ID;

PRODUCT_ID PRODUCT_NAME                                                                                           ORDER_ID   QUANTITY UNIT_PRICE   SUBTOTAL                                             
---------- ---------------------------------------------------------------------------------------------------- ---------- ---------- ---------- ----------                                             
       101 Classic Silver Watch                                                                                       1001          1       2499       2499                                             
       101 Classic Silver Watch                                                                                       1009          1       2499       2499                                             
       102 Elegant Gold Watch                                                                                         1002          1       3999       3999                                             
       103 Digital Sport Watch                                                                                        1001          3       1999       5997                                             
       103 Digital Sport Watch                                                                                        1003          1       1999       1999                                             
       104 Smart Fit Pro                                                                                              1004          1       5999       5999                                             
       105 Smart Active Watch                                                                                         1005          1       7499       7499                                             
       106 Sports Chronograph                                                                                         1006          1       4599       4599                                             
       107 Outdoor Pro Watch                                                                                          1007          1       5299       5299                                             
       108 Royal Gold Edition                                                                                         1008          1      12999      12999                                             

10 rows selected.

SQL> SELECT c.Customer_ID,
  2  	    c.First_Name,
  3  	    c.Last_Name,
  4  	    o.Order_ID,
  5  	    o.Order_Date,
  6  	    o.Order_Status,
  7  	    o.Total_Amount
  8  FROM Customer c
  9  LEFT JOIN Orders o
 10  ON c.Customer_ID = o.Customer_ID
 11  ORDER BY c.Customer_ID;

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
 
SQL> SELECT o.Order_ID,
  2  	    o.Order_Date,
  3  	    o.Order_Status,
  4  	    o.Total_Amount,
  5  	    c.Customer_ID,
  6  	    c.First_Name,
  7  	    c.Last_Name
  8  FROM Customer c
  9  RIGHT JOIN Orders o
 10  ON c.Customer_ID = o.Customer_ID
 11  ORDER BY o.Order_ID;

  ORDER_ID ORDER_DAT ORDER_STATUS         TOTAL_AMOUNT CUSTOMER_ID FIRST_NAME                                         LAST_NAME                                                                         
---------- --------- -------------------- ------------ ----------- -------------------------------------------------- --------------------------------------------------                                
      1001 15-SEP-26 Delivered                    6999           1 Renu                                               Srinivasan                                                                        
      1002 02-SEP-26 Shipped                      3999           2 Arjun                                              Kumar                                                                             
      1003 03-SEP-26 Processing                   1999           3 Priya                                              Kumar                                                                             
      1004 04-SEP-26 Delivered                    5999           4 Rahul                                              Sharma                                                                            
      1005 05-SEP-26 Shipped                      7499           5 Keerthana                                          Mohan                                                                             
      1006 06-SEP-26 Processing                   4599           6 Nandhini                                           Ravi                                                                              
      1007 07-SEP-26 Delivered                    5299           7 Karthik                                            Prakash                                                                           
      1008 08-SEP-26 Shipped                     12999           8 Swetha                                             Balaji                                                                            
      1009 09-SEP-26 Processing                   2499           9 Vignesh                                            Ganesh                                                                            

9 rows selected.

SQL> SELECT c.Customer_ID,
  2  	    c.First_Name,
  3  	    c.Last_Name,
  4  	    o.Order_ID,
  5  	    o.Order_Date,
  6  	    o.Order_Status,
  7  	    p.Product_ID,
  8  	    p.Product_Name,
  9  	    od.Quantity,
 10  	    od.Unit_Price,
 11  	    od.Subtotal,
 12  	    pay.Payment_ID,
 13  	    pay.Payment_Mode,
 14  	    pay.Payment_Amount,
 15  	    pay.Payment_Status
 16  FROM Customer c
 17  INNER JOIN Orders o
 18  ON c.Customer_ID = o.Customer_ID
 19  INNER JOIN Order_Details od
 20  ON o.Order_ID = od.Order_ID
 21  INNER JOIN Product p
 22  ON od.Product_ID = p.Product_ID
 23  LEFT JOIN Payment pay
 24  ON o.Order_ID = pay.Order_ID
 25  ORDER BY o.Order_ID, p.Product_ID;

CUSTOMER_ID FIRST_NAME                                         LAST_NAME                                            ORDER_ID ORDER_DAT ORDER_STATUS         PRODUCT_ID                                  
----------- -------------------------------------------------- -------------------------------------------------- ---------- --------- -------------------- ----------                                  
PRODUCT_NAME                                                                                           QUANTITY UNIT_PRICE   SUBTOTAL PAYMENT_ID PAYMENT_MODE         PAYMENT_AMOUNT                    
---------------------------------------------------------------------------------------------------- ---------- ---------- ---------- ---------- -------------------- --------------                    
PAYMENT_STATUS                                                                                                                                                                                          
--------------------                                                                                                                                                                                    
          1 Renu                                               Srinivasan                                               1001 15-SEP-26 Delivered                   101                                  
Classic Silver Watch                                                                                          1       2499       2499        501 UPI                            6497                    
Successful                                                                                                                                                                                              
                                                                                                                                                                                                        
          1 Renu                                               Srinivasan                                               1001 15-SEP-26 Delivered                   103                                  
Digital Sport Watch                                                                                           3       1999       5997        501 UPI                            6497                    
Successful                                                                                                                                                                                              
                                                                                                                                                                                                        
          2 Arjun                                              Kumar                                                    1002 02-SEP-26 Shipped                     102                                  
Elegant Gold Watch                                                                                            1       3999       3999        502 Credit Card                    3999                    
Successful                                                                                                                                                                                              
                                                                                                                                                                                                        
          3 Priya                                              Kumar                                                    1003 03-SEP-26 Processing                  103                                  
Digital Sport Watch                                                                                           1       1999       1999        503 Debit Card                     1999                    
Successful                                                                                                                                                                                              
                                                                                                                                                                                                        
          4 Rahul                                              Sharma                                                   1004 04-SEP-26 Delivered                   104                                  
Smart Fit Pro                                                                                                 1       5999       5999        504 UPI                            5999                    
Successful                                                                                                                                                                                              
                                                                                                                                                                                                        
          5 Keerthana                                          Mohan                                                    1005 05-SEP-26 Shipped                     105                                  
Smart Active Watch                                                                                            1       7499       7499        505 Net Banking                    7499                    
Successful                                                                                                                                                                                              
                                                                                                                                                                                                        
          6 Nandhini                                           Ravi                                                     1006 06-SEP-26 Processing                  106                                  
Sports Chronograph                                                                                            1       4599       4599        506 UPI                            4599                    
Failed                                                                                                                                                                                                  
                                                                                                                                                                                                        
          7 Karthik                                            Prakash                                                  1007 07-SEP-26 Delivered                   107                                  
Outdoor Pro Watch                                                                                             1       5299       5299        507 Credit Card                    5299                    
Successful                                                                                                                                                                                              
                                                                                                                                                                                                        
          8 Swetha                                             Balaji                                                   1008 08-SEP-26 Shipped                     108                                  
Royal Gold Edition                                                                                            1      12999      12999        508 Debit Card                    12999                    
Successful                                                                                                                                                                                              
                                                                                                                                                                                                        
          9 Vignesh                                            Ganesh                                                   1009 09-SEP-26 Processing                  101                                  
Classic Silver Watch                                                                                          1       2499       2499        509 UPI                            2499                    
Successful                                                                                                                                                                                              
                                                                                                                                                                                                        
10 rows selected.

SQL> SELECT c.Customer_ID,
  2  	    c.First_Name,
  3  	    c.Last_Name,
  4  	    o.Order_ID,
  5  	    o.Order_Date,
  6  	    p.Product_Name,
  7  	    od.Quantity,
  8  	    od.Unit_Price,
  9  	    od.Subtotal
 10  FROM Customer c
 11  INNER JOIN Orders o
 12  ON c.Customer_ID = o.Customer_ID
 13  INNER JOIN Order_Details od
 14  ON o.Order_ID = od.Order_ID
 15  INNER JOIN Product p
 16  ON od.Product_ID = p.Product_ID
 17  ORDER BY c.Customer_ID, o.Order_Date;

CUSTOMER_ID FIRST_NAME                                         LAST_NAME                                            ORDER_ID ORDER_DAT                                                                  
----------- -------------------------------------------------- -------------------------------------------------- ---------- ---------                                                                  
PRODUCT_NAME                                                                                           QUANTITY UNIT_PRICE   SUBTOTAL                                                                   
---------------------------------------------------------------------------------------------------- ---------- ---------- ----------                                                                   
          1 Renu                                               Srinivasan                                               1001 15-SEP-26                                                                  
Classic Silver Watch                                                                                          1       2499       2499                                                                   
                                                                                                                                                                                                        
          1 Renu                                               Srinivasan                                               1001 15-SEP-26                                                                  
Digital Sport Watch                                                                                           3       1999       5997                                                                   
                                                                                                                                                                                                        
          2 Arjun                                              Kumar                                                    1002 02-SEP-26                                                                  
Elegant Gold Watch                                                                                            1       3999       3999                                                                   
                                                                                                                                                                                                        
          3 Priya                                              Kumar                                                    1003 03-SEP-26                                                                  
Digital Sport Watch                                                                                           1       1999       1999                                                                   
                                                                                                                                                                                                        
          4 Rahul                                              Sharma                                                   1004 04-SEP-26                                                                  
Smart Fit Pro                                                                                                 1       5999       5999                                                                   
                                                                                                                                                                                                        
          5 Keerthana                                          Mohan                                                    1005 05-SEP-26                                                                  
Smart Active Watch                                                                                            1       7499       7499                                                                   
                                                                                                                                                                                                        
          6 Nandhini                                           Ravi                                                     1006 06-SEP-26                                                                  
Sports Chronograph                                                                                            1       4599       4599                                                                   
                                                                                                                                                                                                        
          7 Karthik                                            Prakash                                                  1007 07-SEP-26                                                                  
Outdoor Pro Watch                                                                                             1       5299       5299                                                                   
                                                                                                                                                                                                        
          8 Swetha                                             Balaji                                                   1008 08-SEP-26                                                                  
Royal Gold Edition                                                                                            1      12999      12999                                                                   
                                                                                                                                                                                                        
          9 Vignesh                                            Ganesh                                                   1009 09-SEP-26                                                                  
Classic Silver Watch                                                                                          1       2499       2499                                                                   
                                                                                                                                                                                                        
10 rows selected.

SQL> SELECT c.Customer_ID,
  2  	    c.First_Name,
  3  	    c.Last_Name,
  4  	    o.Order_ID,
  5  	    o.Order_Date,
  6  	    p.Product_Name,
  7  	    od.Quantity,
  8  	    od.Subtotal,
  9  	    pay.Payment_Mode,
 10  	    pay.Payment_Amount,
 11  	    pay.Payment_Status
 12  FROM Customer c
 13  INNER JOIN Orders o
 14  ON c.Customer_ID = o.Customer_ID
 15  INNER JOIN Order_Details od
 16  ON o.Order_ID = od.Order_ID
 17  INNER JOIN Product p
 18  ON od.Product_ID = p.Product_ID
 19  LEFT JOIN Payment pay
 20  ON o.Order_ID = pay.Order_ID
 21  ORDER BY c.Customer_ID, o.Order_ID;

CUSTOMER_ID FIRST_NAME                                         LAST_NAME                                            ORDER_ID ORDER_DAT                                                                  
----------- -------------------------------------------------- -------------------------------------------------- ---------- ---------                                                                  
PRODUCT_NAME                                                                                           QUANTITY   SUBTOTAL PAYMENT_MODE         PAYMENT_AMOUNT PAYMENT_STATUS                           
---------------------------------------------------------------------------------------------------- ---------- ---------- -------------------- -------------- --------------------                     
          1 Renu                                               Srinivasan                                               1001 15-SEP-26                                                                  
Classic Silver Watch                                                                                          1       2499 UPI                            6497 Successful                               
                                                                                                                                                                                                        
          1 Renu                                               Srinivasan                                               1001 15-SEP-26                                                                  
Digital Sport Watch                                                                                           3       5997 UPI                            6497 Successful                               
                                                                                                                                                                                                        
          2 Arjun                                              Kumar                                                    1002 02-SEP-26                                                                  
Elegant Gold Watch                                                                                            1       3999 Credit Card                    3999 Successful                               
                                                                                                                                                                                                        
          3 Priya                                              Kumar                                                    1003 03-SEP-26                                                                  
Digital Sport Watch                                                                                           1       1999 Debit Card                     1999 Successful                               
                                                                                                                                                                                                        
          4 Rahul                                              Sharma                                                   1004 04-SEP-26                                                                  
Smart Fit Pro                                                                                                 1       5999 UPI                            5999 Successful                               
                                                                                                                                                                                                        
          5 Keerthana                                          Mohan                                                    1005 05-SEP-26                                                                  
Smart Active Watch                                                                                            1       7499 Net Banking                    7499 Successful                               
                                                                                                                                                                                                        
          6 Nandhini                                           Ravi                                                     1006 06-SEP-26                                                                  
Sports Chronograph                                                                                            1       4599 UPI                            4599 Failed                                   
                                                                                                                                                                                                        
          7 Karthik                                            Prakash                                                  1007 07-SEP-26                                                                  
Outdoor Pro Watch                                                                                             1       5299 Credit Card                    5299 Successful                               
                                                                                                                                                                                                        
          8 Swetha                                             Balaji                                                   1008 08-SEP-26                                                                  
Royal Gold Edition                                                                                            1      12999 Debit Card                    12999 Successful                               
                                                                                                                                                                                                        
          9 Vignesh                                            Ganesh                                                   1009 09-SEP-26                                                                  
Classic Silver Watch                                                                                          1       2499 UPI                            2499 Successful                               
                                                                                                                                                                                                        
10 rows selected.

SQL> SELECT c.Customer_ID,
  2  	    c.First_Name,
  3  	    c.Last_Name,
  4  	    o.Order_ID,
  5  	    o.Order_Date,
  6  	    p.Product_Name,
  7  	    od.Quantity,
  8  	    od.Subtotal,
  9  	    o.Order_Status,
 10  	    pay.Payment_Mode,
 11  	    pay.Payment_Status
 12  FROM Customer c
 13  INNER JOIN Orders o
 14  ON c.Customer_ID = o.Customer_ID
 15  INNER JOIN Order_Details od
 16  ON o.Order_ID = od.Order_ID
 17  INNER JOIN Product p
 18  ON od.Product_ID = p.Product_ID
 19  LEFT JOIN Payment pay
 20  ON o.Order_ID = pay.Order_ID
 21  ORDER BY c.Customer_ID, o.Order_ID;

CUSTOMER_ID FIRST_NAME                                         LAST_NAME                                            ORDER_ID ORDER_DAT                                                                  
----------- -------------------------------------------------- -------------------------------------------------- ---------- ---------                                                                  
PRODUCT_NAME                                                                                           QUANTITY   SUBTOTAL ORDER_STATUS         PAYMENT_MODE         PAYMENT_STATUS                     
---------------------------------------------------------------------------------------------------- ---------- ---------- -------------------- -------------------- --------------------               
          1 Renu                                               Srinivasan                                               1001 15-SEP-26                                                                  
Classic Silver Watch                                                                                          1       2499 Delivered            UPI                  Successful                         
                                                                                                                                                                                                        
          1 Renu                                               Srinivasan                                               1001 15-SEP-26                                                                  
Digital Sport Watch                                                                                           3       5997 Delivered            UPI                  Successful                         
                                                                                                                                                                                                        
          2 Arjun                                              Kumar                                                    1002 02-SEP-26                                                                  
Elegant Gold Watch                                                                                            1       3999 Shipped              Credit Card          Successful                         
                                                                                                                                                                                                        
          3 Priya                                              Kumar                                                    1003 03-SEP-26                                                                  
Digital Sport Watch                                                                                           1       1999 Processing           Debit Card           Successful                         
                                                                                                                                                                                                        
          4 Rahul                                              Sharma                                                   1004 04-SEP-26                                                                  
Smart Fit Pro                                                                                                 1       5999 Delivered            UPI                  Successful                         
                                                                                                                                                                                                        
          5 Keerthana                                          Mohan                                                    1005 05-SEP-26                                                                  
Smart Active Watch                                                                                            1       7499 Shipped              Net Banking          Successful                         
                                                                                                                                                                                                        
          6 Nandhini                                           Ravi                                                     1006 06-SEP-26                                                                  
Sports Chronograph                                                                                            1       4599 Processing           UPI                  Failed                             
                                                                                                                                                                                                        
          7 Karthik                                            Prakash                                                  1007 07-SEP-26                                                                  
Outdoor Pro Watch                                                                                             1       5299 Delivered            Credit Card          Successful                         
                                                                                                                                                                                                        
          8 Swetha                                             Balaji                                                   1008 08-SEP-26                                                                  
Royal Gold Edition                                                                                            1      12999 Shipped              Debit Card           Successful                         
                                                                                                                                                                                                        
          9 Vignesh                                            Ganesh                                                   1009 09-SEP-26                                                                  
Classic Silver Watch                                                                                          1       2499 Processing           UPI                  Successful                         
                                                                                                                                                                                                        
10 rows selected.

SQL> SELECT pay.Payment_ID,
  2  	    o.Order_ID,
  3  	    c.Customer_ID,
  4  	    c.First_Name,
  5  	    c.Last_Name,
  6  	    pay.Payment_Mode,
  7  	    pay.Payment_Date,
  8  	    pay.Payment_Amount,
  9  	    pay.Payment_Status
 10  FROM Payment pay
 11  INNER JOIN Orders o
 12  ON pay.Order_ID = o.Order_ID
 13  INNER JOIN Customer c
 14  ON o.Customer_ID = c.Customer_ID
 15  ORDER BY pay.Payment_ID;

PAYMENT_ID   ORDER_ID CUSTOMER_ID FIRST_NAME                                         LAST_NAME                                          PAYMENT_MODE         PAYMENT_D PAYMENT_AMOUNT                   
---------- ---------- ----------- -------------------------------------------------- -------------------------------------------------- -------------------- --------- --------------                   
PAYMENT_STATUS                                                                                                                                                                                          
--------------------                                                                                                                                                                                    
       501       1001           1 Renu                                               Srinivasan                                         UPI                  01-SEP-26           6497                   
Successful                                                                                                                                                                                              
                                                                                                                                                                                                        
       502       1002           2 Arjun                                              Kumar                                              Credit Card          02-SEP-26           3999                   
Successful                                                                                                                                                                                              
                                                                                                                                                                                                        
       503       1003           3 Priya                                              Kumar                                              Debit Card           03-SEP-26           1999                   
Successful                                                                                                                                                                                              
                                                                                                                                                                                                        
       504       1004           4 Rahul                                              Sharma                                             UPI                  04-SEP-26           5999                   
Successful                                                                                                                                                                                              
                                                                                                                                                                                                        
       505       1005           5 Keerthana                                          Mohan                                              Net Banking          05-SEP-26           7499                   
Successful                                                                                                                                                                                              
                                                                                                                                                                                                        
       506       1006           6 Nandhini                                           Ravi                                               UPI                  06-SEP-26           4599                   
Failed                                                                                                                                                                                                  
                                                                                                                                                                                                        
       507       1007           7 Karthik                                            Prakash                                            Credit Card          07-SEP-26           5299                   
Successful                                                                                                                                                                                              
                                                                                                                                                                                                        
       508       1008           8 Swetha                                             Balaji                                             Debit Card           08-SEP-26          12999                   
Successful                                                                                                                                                                                              
                                                                                                                                                                                                        
       509       1009           9 Vignesh                                            Ganesh                                             UPI                  09-SEP-26           2499                   
Successful                                                                                                                                                                                              
                                                                                                                                                                                                        
9 rows selected.

SQL> COMMIT;

Commit complete.


