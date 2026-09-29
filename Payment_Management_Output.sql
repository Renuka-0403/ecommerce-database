SQL> CREATE TABLE Payment (
  2  	 Payment_ID	 NUMBER PRIMARY KEY,
  3  	 Order_ID	 NUMBER NOT NULL,
  4  	 Payment_Mode	 VARCHAR2(20) NOT NULL,
  5  	 Payment_Date	 DATE NOT NULL,
  6  	 Payment_Amount  NUMBER(10,2) NOT NULL,
  7  	 Payment_Status  VARCHAR2(20) NOT NULL,
  8  	 CONSTRAINT FK_Payment_Order
  9  	     FOREIGN KEY (Order_ID)
 10  	     REFERENCES Orders(Order_ID)
 11  );

Table created.

SQL> INSERT INTO Payment
  2  VALUES (501, 1001, 'UPI', TO_DATE('01-09-2026','DD-MM-YYYY'), 6497.00, 'Successful');

1 row created.
 
SQL> INSERT INTO Payment
  2  VALUES (502, 1002, 'Credit Card', TO_DATE('02-09-2026','DD-MM-YYYY'), 3999.00, 'Successful');

1 row created.
 
SQL> INSERT INTO Payment
  2  VALUES (503, 1003, 'Debit Card', TO_DATE('03-09-2026','DD-MM-YYYY'), 1999.00, 'Failed');

1 row created.

SQL> INSERT INTO Payment
  2  VALUES (504, 1004, 'UPI', TO_DATE('04-09-2026','DD-MM-YYYY'), 5999.00, 'Successful');

1 row created.

SQL> INSERT INTO Payment
  2  VALUES (505, 1005, 'Net Banking', TO_DATE('05-09-2026','DD-MM-YYYY'), 7499.00, 'Successful');

1 row created.
 
SQL> INSERT INTO Payment
  2  VALUES (506, 1006, 'UPI', TO_DATE('06-09-2026','DD-MM-YYYY'), 4599.00, 'Failed');

1 row created.
 
SQL> INSERT INTO Payment
  2  VALUES (507, 1007, 'Credit Card', TO_DATE('07-09-2026','DD-MM-YYYY'), 5299.00, 'Successful');

1 row created.
 
SQL> INSERT INTO Payment
  2  VALUES (508, 1008, 'Debit Card', TO_DATE('08-09-2026','DD-MM-YYYY'), 12999.00, 'Successful');

1 row created.

SQL> INSERT INTO Payment
  2  VALUES (509, 1009, 'UPI', TO_DATE('09-09-2026','DD-MM-YYYY'), 2499.00, 'Successful');

1 row created.

SQL> SELECT * FROM Payment;

PAYMENT_ID   ORDER_ID PAYMENT_MODE         PAYMENT_D PAYMENT_AMOUNT PAYMENT_STATUS                                                                                                                      
---------- ---------- -------------------- --------- -------------- --------------------                                                                                                                
       501       1001 UPI                  01-SEP-26           6497 Successful                                                                                                                          
       502       1002 Credit Card          02-SEP-26           3999 Successful                                                                                                                          
       503       1003 Debit Card           03-SEP-26           1999 Failed                                                                                                                              
       504       1004 UPI                  04-SEP-26           5999 Successful                                                                                                                          
       505       1005 Net Banking          05-SEP-26           7499 Successful                                                                                                                          
       506       1006 UPI                  06-SEP-26           4599 Failed                                                                                                                              
       507       1007 Credit Card          07-SEP-26           5299 Successful                                                                                                                          
       508       1008 Debit Card           08-SEP-26          12999 Successful                                                                                                                          
       509       1009 UPI                  09-SEP-26           2499 Successful                                                                                                                          

9 rows selected.
 
SQL> SELECT * FROM Payment
  2  WHERE Payment_Status = 'Successful';

PAYMENT_ID   ORDER_ID PAYMENT_MODE         PAYMENT_D PAYMENT_AMOUNT PAYMENT_STATUS                                                                                                                      
---------- ---------- -------------------- --------- -------------- --------------------                                                                                                                
       501       1001 UPI                  01-SEP-26           6497 Successful                                                                                                                          
       502       1002 Credit Card          02-SEP-26           3999 Successful                                                                                                                          
       504       1004 UPI                  04-SEP-26           5999 Successful                                                                                                                          
       505       1005 Net Banking          05-SEP-26           7499 Successful                                                                                                                          
       507       1007 Credit Card          07-SEP-26           5299 Successful                                                                                                                          
       508       1008 Debit Card           08-SEP-26          12999 Successful                                                                                                                          
       509       1009 UPI                  09-SEP-26           2499 Successful                                                                                                                          

7 rows selected.

SQL> SELECT * FROM Payment
  2  WHERE Payment_Status = 'Failed';

PAYMENT_ID   ORDER_ID PAYMENT_MODE         PAYMENT_D PAYMENT_AMOUNT PAYMENT_STATUS                                                                                                                      
---------- ---------- -------------------- --------- -------------- --------------------                                                                                                                
       503       1003 Debit Card           03-SEP-26           1999 Failed                                                                                                                              
       506       1006 UPI                  06-SEP-26           4599 Failed                                                                                                                              

2 rows selected.
 
SQL> UPDATE Payment
  2  SET Payment_Status = 'Successful'
  3  WHERE Payment_ID = 503;

1 row updated.
 
SQL> SELECT * FROM Payment
  2  WHERE Payment_ID = 503;

PAYMENT_ID   ORDER_ID PAYMENT_MODE         PAYMENT_D PAYMENT_AMOUNT PAYMENT_STATUS                                                                                                                      
---------- ---------- -------------------- --------- -------------- --------------------                                                                                                                
       503       1003 Debit Card           03-SEP-26           1999 Successful                                                                                                                          

1 row selected.
 
SQL> SELECT
  2  	 Payment_Mode,
  3  	 COUNT(Payment_ID) AS Total_Transactions,
  4  	 SUM(Payment_Amount) AS Total_Amount
  5  FROM Payment
  6  WHERE Payment_Status = 'Successful'
  7  GROUP BY Payment_Mode
  8  ORDER BY Payment_Mode;

PAYMENT_MODE         TOTAL_TRANSACTIONS TOTAL_AMOUNT                                                                                                                                                    
-------------------- ------------------ ------------                                                                                                                                                    
Credit Card                           2         9298                                                                                                                                                    
Debit Card                            2        14998                                                                                                                                                    
Net Banking                           1         7499                                                                                                                                                    
UPI                                   3        14995                                                                                                                                                    

4 rows selected.

SQL> SELECT
  2  	 p.Payment_ID,
  3  	 o.Order_ID,
  4  	 c.Customer_ID,
  5  	 c.First_Name,
  6  	 c.Last_Name,
  7  	 p.Payment_Mode,
  8  	 p.Payment_Date,
  9  	 p.Payment_Amount,
 10  	 p.Payment_Status
 11  FROM Payment p
 12  JOIN Orders o
 13  	 ON p.Order_ID = o.Order_ID
 14  JOIN Customer c
 15  	 ON o.Customer_ID = c.Customer_ID
 16  ORDER BY p.Payment_ID;

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


