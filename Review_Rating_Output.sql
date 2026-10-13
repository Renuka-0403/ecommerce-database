SQL> CREATE TABLE Review (
  2  	 Review_ID     NUMBER PRIMARY KEY,
  3  	 Customer_ID   NUMBER NOT NULL,
  4  	 Product_ID    NUMBER NOT NULL,
  5  	 Review_Text   VARCHAR2(500) NOT NULL,
  6  	 Review_Date   DATE NOT NULL,
  7  	 CONSTRAINT FK_Review_Customer
  8  	     FOREIGN KEY (Customer_ID)
  9  	     REFERENCES Customer(Customer_ID),
 10  	 CONSTRAINT FK_Review_Product
 11  	     FOREIGN KEY (Product_ID)
 12  	     REFERENCES Product(Product_ID)
 13  ); 

Table created.

SQL> CREATE TABLE Rating (
  2  	 Rating_ID     NUMBER PRIMARY KEY,
  3  	 Customer_ID   NUMBER NOT NULL,
  4  	 Product_ID    NUMBER NOT NULL,
  5  	 Rating        NUMBER NOT NULL,
  6  	 Rating_Date   DATE NOT NULL,
  7  	 CONSTRAINT FK_Rating_Customer
  8  	     FOREIGN KEY (Customer_ID)
  9  	     REFERENCES Customer(Customer_ID),
 10  	 CONSTRAINT FK_Rating_Product
 11  	     FOREIGN KEY (Product_ID)
 12  	     REFERENCES Product(Product_ID)
 13  );

Table created.

SQL> INSERT INTO Review
  2  VALUES (601, 1, 101, 'Good quality and elegant design.', TO_DATE('10-09-2026','DD-MM-YYYY'));

1 row created.

SQL> INSERT INTO Review
  2  VALUES (602, 2, 102, 'Beautiful watch with premium finish.', TO_DATE('11-09-2026','DD-MM-YYYY'));

1 row created.
  
SQL> INSERT INTO Review
  2  VALUES (603, 3, 103, 'Good sports watch and easy to use.', TO_DATE('12-09-2026','DD-MM-YYYY'));

1 row created.

SQL> INSERT INTO Review
  2  VALUES (604, 4, 104, 'Useful smart features and good display.', TO_DATE('13-09-2026','DD-MM-YYYY'));

1 row created.

SQL> INSERT INTO Review
  2  VALUES (605, 5, 105, 'Comfortable and suitable for daily use.', TO_DATE('14-09-2026','DD-MM-YYYY'));

1 row created.

SQL> INSERT INTO Review
  2  VALUES (606, 6, 106, 'Strong design and excellent performance.', TO_DATE('15-09-2026','DD-MM-YYYY'));

1 row created.

SQL> INSERT INTO Review
  2  VALUES (607, 7, 107, 'Great outdoor watch with good water resistance.', TO_DATE('16-09-2026','DD-MM-YYYY'));

1 row created.

SQL> INSERT INTO Review
  2  VALUES (608, 8, 108, 'Premium looking watch with excellent finish.', TO_DATE('17-09-2026','DD-MM-YYYY'));

1 row created.

SQL> INSERT INTO Review
  2  VALUES (609, 9, 101, 'Classic design and good value for money.', TO_DATE('18-09-2026','DD-MM-YYYY'));

1 row created.

SQL> INSERT INTO Rating
  2  VALUES (701, 1, 101, 5, TO_DATE('10-09-2026','DD-MM-YYYY'));

1 row created.

SQL> INSERT INTO Rating
  2  VALUES (702, 2, 102, 5, TO_DATE('11-09-2026','DD-MM-YYYY'));

1 row created.

SQL>INSERT INTO Rating
  2  VALUES (703, 3, 103, 4, TO_DATE('12-09-2026','DD-MM-YYYY'));

SQL> INSERT INTO Rating
  2  VALUES (704, 4, 104, 4, TO_DATE('13-09-2026','DD-MM-YYYY'));

1 row created.

SQL> INSERT INTO Rating
  2  VALUES (705, 5, 105, 5, TO_DATE('14-09-2026','DD-MM-YYYY'));

1 row created.

SQL> INSERT INTO Rating
  2  VALUES (706, 6, 106, 5, TO_DATE('15-09-2026','DD-MM-YYYY'));

1 row created.

SQL> INSERT INTO Rating
  2  VALUES (707, 7, 107, 4, TO_DATE('16-09-2026','DD-MM-YYYY'));

1 row created.

SQL> INSERT INTO Rating
  2  VALUES (708, 8, 108, 5, TO_DATE('17-09-2026','DD-MM-YYYY'));

1 row created.

SQL> INSERT INTO Rating
  2  VALUES (709, 9, 101, 4, TO_DATE('18-09-2026','DD-MM-YYYY'));

1 row created.

SQL> SELECT * FROM Review;

 REVIEW_ID CUSTOMER_ID PRODUCT_ID                                                                                                                                                                       
---------- ----------- ----------                                                                                                                                                                       
REVIEW_TEXT                                                                                                                                                                                             
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
REVIEW_DA                                                                                                                                                                                               
---------                                                                                                                                                                                               
       602           2        102                                                                                                                                                                       
Beautiful watch with premium finish.                                                                                                                                                                    
11-SEP-26                                                                                                                                                                                               
                                                                                                                                                                                                        
       603           3        103                                                                                                                                                                       
Good sports watch and easy to use.                                                                                                                                                                      
12-SEP-26                                                                                                                                                                                               
                                                                                                                                                                                                        
       604           4        104                                                                                                                                                                       
Useful smart features and good display.                                                                                                                                                                 
13-SEP-26                                                                                                                                                                                               
                                                                                                                                                                                                        
       605           5        105                                                                                                                                                                       
Comfortable and suitable for daily use.                                                                                                                                                                 
14-SEP-26                                                                                                                                                                                               
                                                                                                                                                                                                        
       606           6        106                                                                                                                                                                       
Strong design and excellent performance.                                                                                                                                                                
15-SEP-26                                                                                                                                                                                               
                                                                                                                                                                                                        
       607           7        107                                                                                                                                                                       
Great outdoor watch with good water resistance.                                                                                                                                                         
16-SEP-26                                                                                                                                                                                               
                                                                                                                                                                                                        
       608           8        108                                                                                                                                                                       
Premium looking watch with excellent finish.                                                                                                                                                            
17-SEP-26                                                                                                                                                                                               
                                                                                                                                                                                                        
       609           9        101                                                                                                                                                                       
Classic design and good value for money.                                                                                                                                                                
18-SEP-26                                                                                                                                                                                               
                                                                                                                                                                                                        
       601           1        101                                                                                                                                                                       
Good quality and elegant design.                                                                                                                                                                        
10-SEP-26                                                                                                                                                                                               
                                                                                                                                                                                                        
9 rows selected.

SQL> SELECT * FROM Rating;

 RATING_ID CUSTOMER_ID PRODUCT_ID     RATING RATING_DA                                                                                                                                                  
---------- ----------- ---------- ---------- ---------                                                                                                                                                  
       701           1        101          5 10-SEP-26                                                                                                                                                  
       702           2        102          5 11-SEP-26                                                                                                                                                  
       703           3        103          4 12-SEP-26                                                                                                                                                  
       704           4        104          4 13-SEP-26                                                                                                                                                  
       705           5        105          5 14-SEP-26                                                                                                                                                  
       706           6        106          5 15-SEP-26                                                                                                                                                  
       707           7        107          4 16-SEP-26                                                                                                                                                  
       708           8        108          5 17-SEP-26                                                                                                                                                  
       709           9        101          4 18-SEP-26                                                                                                                                                  

9 rows selected.

SQL> SELECT
  2  	 r.Review_ID,
  3  	 c.Customer_ID,
  4  	 c.First_Name,
  5  	 c.Last_Name,
  6  	 p.Product_ID,
  7  	 p.Product_Name,
  8  	 r.Review_Text,
  9  	 r.Review_Date
 10  FROM Review r
 11  JOIN Customer c
 12  	 ON r.Customer_ID = c.Customer_ID
 13  JOIN Product p
 14  	 ON r.Product_ID = p.Product_ID
 15  ORDER BY r.Review_ID;

 REVIEW_ID CUSTOMER_ID FIRST_NAME                                         LAST_NAME                                          PRODUCT_ID                                                                 
---------- ----------- -------------------------------------------------- -------------------------------------------------- ----------                                                                 
PRODUCT_NAME                                                                                                                                                                                            
----------------------------------------------------------------------------------------------------                                                                                                    
REVIEW_TEXT                                                                                                                                                                                             
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
REVIEW_DA                                                                                                                                                                                               
---------                                                                                                                                                                                               
       601           1 Renu                                               Srinivasan                                                101                                                                 
Classic Silver Watch                                                                                                                                                                                    
Good quality and elegant design.                                                                                                                                                                        
10-SEP-26                                                                                                                                                                                               
                                                                                                                                                                                                        
       602           2 Arjun                                              Kumar                                                     102                                                                 
Elegant Gold Watch                                                                                                                                                                                      
Beautiful watch with premium finish.                                                                                                                                                                    
11-SEP-26                                                                                                                                                                                               
                                                                                                                                                                                                        
       603           3 Priya                                              Kumar                                                     103                                                                 
Digital Sport Watch                                                                                                                                                                                     
Good sports watch and easy to use.                                                                                                                                                                      
12-SEP-26                                                                                                                                                                                               
                                                                                                                                                                                                        
       604           4 Rahul                                              Sharma                                                    104                                                                 
Smart Fit Pro                                                                                                                                                                                           
Useful smart features and good display.                                                                                                                                                                 
13-SEP-26                                                                                                                                                                                               
                                                                                                                                                                                                        
       605           5 Keerthana                                          Mohan                                                     105                                                                 
Smart Active Watch                                                                                                                                                                                      
Comfortable and suitable for daily use.                                                                                                                                                                 
14-SEP-26                                                                                                                                                                                               
                                                                                                                                                                                                        
       606           6 Nandhini                                           Ravi                                                      106                                                                 
Sports Chronograph                                                                                                                                                                                      
Strong design and excellent performance.                                                                                                                                                                
15-SEP-26                                                                                                                                                                                               
                                                                                                                                                                                                        
       607           7 Karthik                                            Prakash                                                   107                                                                 
Outdoor Pro Watch                                                                                                                                                                                       
Great outdoor watch with good water resistance.                                                                                                                                                         
16-SEP-26                                                                                                                                                                                               
                                                                                                                                                                                                        
       608           8 Swetha                                             Balaji                                                    108                                                                 
Royal Gold Edition                                                                                                                                                                                      
Premium looking watch with excellent finish.                                                                                                                                                            
17-SEP-26                                                                                                                                                                                               
                                                                                                                                                                                                        
       609           9 Vignesh                                            Ganesh                                                    101                                                                 
Classic Silver Watch                                                                                                                                                                                    
Classic design and good value for money.                                                                                                                                                                
18-SEP-26                                                                                                                                                                                               
                                                                                                                                                                                                        
9 rows selected.

SQL> SELECT
  2  	 p.Product_ID,
  3  	 p.Product_Name,
  4  	 ROUND(AVG(r.Rating), 2) AS Average_Rating
  5  FROM Product p
  6  JOIN Rating r
  7  	 ON p.Product_ID = r.Product_ID
  8  GROUP BY
  9  	 p.Product_ID,
 10  	 p.Product_Name
 11  ORDER BY Average_Rating DESC;

PRODUCT_ID PRODUCT_NAME                                                                                         AVERAGE_RATING                                                                          
---------- ---------------------------------------------------------------------------------------------------- --------------                                                                          
       102 Elegant Gold Watch                                                                                                5                                                                          
       106 Sports Chronograph                                                                                                5                                                                          
       108 Royal Gold Edition                                                                                                5                                                                          
       105 Smart Active Watch                                                                                                5                                                                          
       101 Classic Silver Watch                                                                                            4.5                                                                          
       107 Outdoor Pro Watch                                                                                                 4                                                                          
       103 Digital Sport Watch                                                                                               4                                                                          
       104 Smart Fit Pro                                                                                                     4                                                                          

8 rows selected.

SQL> SELECT
  2  	 r.Rating_ID,
  3  	 p.Product_ID,
  4  	 p.Product_Name,
  5  	 r.Customer_ID,
  6  	 r.Rating,
  7  	 r.Rating_Date
  8  FROM Rating r
  9  JOIN Product p
 10  	 ON r.Product_ID = p.Product_ID
 11  ORDER BY r.Rating_ID;

 RATING_ID PRODUCT_ID PRODUCT_NAME                                                                                         CUSTOMER_ID     RATING RATING_DA                                             
---------- ---------- ---------------------------------------------------------------------------------------------------- ----------- ---------- ---------                                             
       701        101 Classic Silver Watch                                                                                           1          5 10-SEP-26                                             
       702        102 Elegant Gold Watch                                                                                             2          5 11-SEP-26                                             
       703        103 Digital Sport Watch                                                                                            3          4 12-SEP-26                                             
       704        104 Smart Fit Pro                                                                                                  4          4 13-SEP-26                                             
       705        105 Smart Active Watch                                                                                             5          5 14-SEP-26                                             
       706        106 Sports Chronograph                                                                                             6          5 15-SEP-26                                             
       707        107 Outdoor Pro Watch                                                                                              7          4 16-SEP-26                                             
       708        108 Royal Gold Edition                                                                                             8          5 17-SEP-26                                             
       709        101 Classic Silver Watch                                                                                           9          4 18-SEP-26                                             

9 rows selected.

SQL> COMMIT;

Commit complete.

