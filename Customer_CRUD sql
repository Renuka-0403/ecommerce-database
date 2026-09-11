SQL> CREATE TABLE Customer (
  2  	 Customer_ID	 NUMBER PRIMARY KEY,
  3  	 First_Name	 VARCHAR2(50) NOT NULL,
  4  	 Last_Name	 VARCHAR2(50) NOT NULL,
  5  	 Email		 VARCHAR2(100) UNIQUE NOT NULL,
  6  	 Phone		 VARCHAR2(15),
  7  	 Date_of_Birth	 DATE,
  8  	 Age		 NUMBER,
  9  	 Address	 VARCHAR2(255)
 10  );
             
SQL> INSERT INTO Customer
  2  VALUES (1, 'Renu', 'Srinivasan', 'renu@gmail.com', '9876543210', TO_DATE('15-06-2005', 'DD-MM-YYYY'), 20, 'Chennai');

1 row created.

SQL> INSERT INTO Customer
  2  VALUES (2, 'Arjun', 'Kumar', 'arjun.kumar@gmail.com', '9876501234', TO_DATE('22-09-2003', 'DD-MM-YYYY'), 22, 'Coimbatore');

1 row created.

SQL> INSERT INTO Customer
  2  VALUES (3, 'Priya', 'Kumar', 'priya.kumar@gmail.com', '9876512345', TO_DATE('08-12-2003', 'DD-MM-YYYY'), 22, 'Madurai');

1 row created.

SQL> INSERT INTO Customer
  2  VALUES (4, 'Rahul', 'Sharma', 'rahul.sharma@gmail.com', '9876523456', TO_DATE('10-04-2002', 'DD-MM-YYYY'), 23, 'Salem');

1 row created.

SQL> INSERT INTO Customer
  2  VALUES (5, 'Keerthana', 'Mohan', 'keerthana.mohan@gmail.com', '9876534567', TO_DATE('18-02-2005', 'DD-MM-YYYY'), 20, 'Trichy');

1 row created.

SQL> INSERT INTO Customer
  2  VALUES (6, 'Nandhini', 'Ravi', 'nandhini.ravi@gmail.com', '9876545678', TO_DATE('30-07-2003', 'DD-MM-YYYY'), 22, 'Erode');

1 row created.

SQL> INSERT INTO Customer
  2  VALUES (7, 'Karthik', 'Prakash', 'karthik.prakash@gmail.com', '9876556789', TO_DATE('05-11-2002', 'DD-MM-YYYY'), 23, 'Vellore');

1 row created.

SQL> INSERT INTO Customer
  2  VALUES (8, 'Swetha', 'Balaji', 'swetha.balaji@gmail.com', '9876567890', TO_DATE('12-09-2005', 'DD-MM-YYYY'), 20, 'Tirunelveli');

1 row created.
 
SQL> INSERT INTO Customer
  2  VALUES (9, 'Vignesh', 'Ganesh', 'vignesh.ganesh@gmail.com', '9876578901', TO_DATE('25-03-2002', 'DD-MM-YYYY'), 23, 'Thanjavur');

1 row created.

SQL> INSERT INTO Customer
  2  VALUES (10, 'Meena', 'Krishnan', 'meena.krishnan@gmail.com', '9876589012', TO_DATE('16-08-2004', 'DD-MM-YYYY'), 21, 'Kanchipuram');

1 row created.

SQL> SELECT * FROM Customer;

CUSTOMER_ID FIRST_NAME                                         LAST_NAME                                                                                                                                
----------- -------------------------------------------------- --------------------------------------------------                                                                                       
EMAIL                                                                                                PHONE           DATE_OF_B        AGE                                                               
---------------------------------------------------------------------------------------------------- --------------- --------- ----------                                                               
ADDRESS                                                                                                                                                                                                 
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
          1 Renu                                               Srinivasan                                                                                                                               
renu@gmail.com                                                                                       9876543210      15-JUN-05         20                                                               
Chennai                                                                                                                                                                                                 
                                                                                                                                                                                                        
          2 Arjun                                              Kumar                                                                                                                                    
arjun.kumar@gmail.com                                                                                9876501234      22-SEP-03         22                                                               
Coimbatore                                                                                                                                                                                              
                                                                                                                                                                                                        
          3 Priya                                              Kumar                                                                                                                                    
priya.kumar@gmail.com                                                                                9876512345      08-DEC-03         22                                                               
Madurai                                                                                                                                                                                                 
                                                                                                                                                                                                        
          4 Rahul                                              Sharma                                                                                                                                   
rahul.sharma@gmail.com                                                                               9876523456      10-APR-02         23                                                               
Salem                                                                                                                                                                                                   
                                                                                                                                                                                                        
          5 Keerthana                                          Mohan                                                                                                                                    
keerthana.mohan@gmail.com                                                                            9876534567      18-FEB-05         20                                                               
Trichy                                                                                                                                                                                                  
                                                                                                                                                                                                        
          6 Nandhini                                           Ravi                                                                                                                                     
nandhini.ravi@gmail.com                                                                              9876545678      30-JUL-03         22                                                               
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
                                                                                                                                                                                                        
         10 Meena                                              Krishnan                                                                                                                                 
meena.krishnan@gmail.com                                                                             9876589012      16-AUG-04         21                                                               
Kanchipuram                                                                                                                                                                                             
                                                                                                                                                                                                        
10 rows selected.

SQL> SELECT * FROM Customer
  2  WHERE Customer_ID = 1;

CUSTOMER_ID FIRST_NAME                                         LAST_NAME                                                                                                                                
----------- -------------------------------------------------- --------------------------------------------------                                                                                       
EMAIL                                                                                                PHONE           DATE_OF_B        AGE                                                               
---------------------------------------------------------------------------------------------------- --------------- --------- ----------                                                               
ADDRESS                                                                                                                                                                                                 
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
          1 Renu                                               Srinivasan                                                                                                                               
renu@gmail.com                                                                                       9876543210      15-JUN-05         20                                                               
Chennai                                                                                                                                                                                                 
                                                                                                                                                                                                        
1 row selected.

SQL> SELECT * FROM Customer
  2  WHERE Email = 'renu@gmail.com';

CUSTOMER_ID FIRST_NAME                                         LAST_NAME                                                                                                                                
----------- -------------------------------------------------- --------------------------------------------------                                                                                       
EMAIL                                                                                                PHONE           DATE_OF_B        AGE                                                               
---------------------------------------------------------------------------------------------------- --------------- --------- ----------                                                               
ADDRESS                                                                                                                                                                                                 
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
          1 Renu                                               Srinivasan                                                                                                                               
renu@gmail.com                                                                                       9876543210      15-JUN-05         20                                                               
Chennai                                                                                                                                                                                                 
                                                                                                                                                                                                        
1 row selected.

SQL> SELECT * FROM Customer
  2  WHERE First_Name = 'Renu';

CUSTOMER_ID FIRST_NAME                                         LAST_NAME                                                                                                                                
----------- -------------------------------------------------- --------------------------------------------------                                                                                       
EMAIL                                                                                                PHONE           DATE_OF_B        AGE                                                               
---------------------------------------------------------------------------------------------------- --------------- --------- ----------                                                               
ADDRESS                                                                                                                                                                                                 
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
          1 Renu                                               Srinivasan                                                                                                                               
renu@gmail.com                                                                                       9876543210      15-JUN-05         20                                                               
Chennai                                                                                                                                                                                                 
                                                                                                                                                                                                        
1 row selected.
  
SQL> SELECT * FROM Customer
  2  WHERE Age > 20;

CUSTOMER_ID FIRST_NAME                                         LAST_NAME                                                                                                                                
----------- -------------------------------------------------- --------------------------------------------------                                                                                       
EMAIL                                                                                                PHONE           DATE_OF_B        AGE                                                               
---------------------------------------------------------------------------------------------------- --------------- --------- ----------                                                               
ADDRESS                                                                                                                                                                                                 
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
          2 Arjun                                              Kumar                                                                                                                                    
arjun.kumar@gmail.com                                                                                9876501234      22-SEP-03         22                                                               
Coimbatore                                                                                                                                                                                              
                                                                                                                                                                                                        
          3 Priya                                              Kumar                                                                                                                                    
priya.kumar@gmail.com                                                                                9876512345      08-DEC-03         22                                                               
Madurai                                                                                                                                                                                                 
                                                                                                                                                                                                        
          4 Rahul                                              Sharma                                                                                                                                   
rahul.sharma@gmail.com                                                                               9876523456      10-APR-02         23                                                               
Salem                                                                                                                                                                                                   
                                                                                                                                                                                                        
          6 Nandhini                                           Ravi                                                                                                                                     
nandhini.ravi@gmail.com                                                                              9876545678      30-JUL-03         22                                                               
Erode                                                                                                                                                                                                   
                                                                                                                                                                                                        
          7 Karthik                                            Prakash                                                                                                                                  
karthik.prakash@gmail.com                                                                            9876556789      05-NOV-02         23                                                               
Vellore                                                                                                                                                                                                 
                                                                                                                                                                                                        
          9 Vignesh                                            Ganesh                                                                                                                                   
vignesh.ganesh@gmail.com                                                                             9876578901      25-MAR-02         23                                                               
Thanjavur                                                                                                                                                                                               
                                                                                                                                                                                                        
         10 Meena                                              Krishnan                                                                                                                                 
meena.krishnan@gmail.com                                                                             9876589012      16-AUG-04         21                                                               
Kanchipuram                                                                                                                                                                                             
                                                                                                                                                                                                        
7 rows selected.

SQL> SELECT * FROM Customer
  2  WHERE Address = 'Chennai';

CUSTOMER_ID FIRST_NAME                                         LAST_NAME                                                                                                                                
----------- -------------------------------------------------- --------------------------------------------------                                                                                       
EMAIL                                                                                                PHONE           DATE_OF_B        AGE                                                               
---------------------------------------------------------------------------------------------------- --------------- --------- ----------                                                               
ADDRESS                                                                                                                                                                                                 
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
          1 Renu                                               Srinivasan                                                                                                                               
renu@gmail.com                                                                                       9876543210      15-JUN-05         20                                                               
Chennai                                                                                                                                                                                                 
                                                                                                                                                                                                        
1 row selected.

SQL> SELECT Customer_ID, First_Name, Last_Name
  2  FROM Customer;

CUSTOMER_ID FIRST_NAME                                         LAST_NAME                                                                                                                                
----------- -------------------------------------------------- --------------------------------------------------                                                                                       
          1 Renu                                               Srinivasan                                                                                                                               
          2 Arjun                                              Kumar                                                                                                                                    
          3 Priya                                              Kumar                                                                                                                                    
          4 Rahul                                              Sharma                                                                                                                                   
          5 Keerthana                                          Mohan                                                                                                                                    
          6 Nandhini                                           Ravi                                                                                                                                     
          7 Karthik                                            Prakash                                                                                                                                  
          8 Swetha                                             Balaji                                                                                                                                   
          9 Vignesh                                            Ganesh                                                                                                                                   
         10 Meena                                              Krishnan                                                                                                                                 

10 rows selected.
  
SQL> SELECT * FROM Customer
  2  ORDER BY First_Name;

CUSTOMER_ID FIRST_NAME                                         LAST_NAME                                                                                                                                
----------- -------------------------------------------------- --------------------------------------------------                                                                                       
EMAIL                                                                                                PHONE           DATE_OF_B        AGE                                                               
---------------------------------------------------------------------------------------------------- --------------- --------- ----------                                                               
ADDRESS                                                                                                                                                                                                 
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
          2 Arjun                                              Kumar                                                                                                                                    
arjun.kumar@gmail.com                                                                                9876501234      22-SEP-03         22                                                               
Coimbatore                                                                                                                                                                                              
                                                                                                                                                                                                        
          7 Karthik                                            Prakash                                                                                                                                  
karthik.prakash@gmail.com                                                                            9876556789      05-NOV-02         23                                                               
Vellore                                                                                                                                                                                                 
                                                                                                                                                                                                        
          5 Keerthana                                          Mohan                                                                                                                                    
keerthana.mohan@gmail.com                                                                            9876534567      18-FEB-05         20                                                               
Trichy                                                                                                                                                                                                  
                                                                                                                                                                                                        
         10 Meena                                              Krishnan                                                                                                                                 
meena.krishnan@gmail.com                                                                             9876589012      16-AUG-04         21                                                               
Kanchipuram                                                                                                                                                                                             
                                                                                                                                                                                                        
          6 Nandhini                                           Ravi                                                                                                                                     
nandhini.ravi@gmail.com                                                                              9876545678      30-JUL-03         22                                                               
Erode                                                                                                                                                                                                   
                                                                                                                                                                                                        
          3 Priya                                              Kumar                                                                                                                                    
priya.kumar@gmail.com                                                                                9876512345      08-DEC-03         22                                                               
Madurai                                                                                                                                                                                                 
                                                                                                                                                                                                        
          4 Rahul                                              Sharma                                                                                                                                   
rahul.sharma@gmail.com                                                                               9876523456      10-APR-02         23                                                               
Salem                                                                                                                                                                                                   
                                                                                                                                                                                                        
          1 Renu                                               Srinivasan                                                                                                                               
renu@gmail.com                                                                                       9876543210      15-JUN-05         20                                                               
Chennai                                                                                                                                                                                                 
                                                                                                                                                                                                        
          8 Swetha                                             Balaji                                                                                                                                   
swetha.balaji@gmail.com                                                                              9876567890      12-SEP-05         20                                                               
Tirunelveli                                                                                                                                                                                             
                                                                                                                                                                                                        
          9 Vignesh                                            Ganesh                                                                                                                                   
vignesh.ganesh@gmail.com                                                                             9876578901      25-MAR-02         23                                                               
Thanjavur                                                                                                                                                                                               
                                                                                                                                                                                                        
10 rows selected.

SQL> SELECT COUNT(*) AS Total_Customers
  2  FROM Customer;

TOTAL_CUSTOMERS                                                                                                                                                                                         
---------------                                                                                                                                                                                         
             10                                                                                                                                                                                         

1 row selected.

SQL> UPDATE Customer
  2  SET Phone = '9123456789'
  3  WHERE Customer_ID = 1;

1 row updated.

SQL> SELECT * FROM Customer
  2  WHERE Customer_ID = 1;

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

SQL> UPDATE Customer
  2  SET Address = 'Anna Nagar, Chennai'
  3  WHERE Customer_ID = 2;

1 row updated.

SQL> SELECT * FROM Customer
  2  WHERE Customer_ID = 2;

CUSTOMER_ID FIRST_NAME                                         LAST_NAME                                                                                                                                
----------- -------------------------------------------------- --------------------------------------------------                                                                                       
EMAIL                                                                                                PHONE           DATE_OF_B        AGE                                                               
---------------------------------------------------------------------------------------------------- --------------- --------- ----------                                                               
ADDRESS                                                                                                                                                                                                 
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
          2 Arjun                                              Kumar                                                                                                                                    
arjun.kumar@gmail.com                                                                                9876501234      22-SEP-03         22                                                               
Anna Nagar, Chennai                                                                                                                                                                                     
                                                                                                                                                                                                        
1 row selected.

SQL> UPDATE Customer
  2  SET Email = 'priya.new@gmail.com'
  3  WHERE Customer_ID = 3;

1 row updated.
 
SQL> SELECT * FROM Customer
  2  WHERE Customer_ID = 3;

CUSTOMER_ID FIRST_NAME                                         LAST_NAME                                                                                                                                
----------- -------------------------------------------------- --------------------------------------------------                                                                                       
EMAIL                                                                                                PHONE           DATE_OF_B        AGE                                                               
---------------------------------------------------------------------------------------------------- --------------- --------- ----------                                                               
ADDRESS                                                                                                                                                                                                 
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
          3 Priya                                              Kumar                                                                                                                                    
priya.new@gmail.com                                                                                  9876512345      08-DEC-03         22                                                               
Madurai                                                                                                                                                                                                 
                                                                                                                                                                                                        
1 row selected.

SQL> UPDATE Customer
  2  SET Age = 23
  3  WHERE Customer_ID = 6;

1 row updated.

SQL> SELECT * FROM Customer
  2  WHERE Customer_ID = 6;

CUSTOMER_ID FIRST_NAME                                         LAST_NAME                                                                                                                                
----------- -------------------------------------------------- --------------------------------------------------                                                                                       
EMAIL                                                                                                PHONE           DATE_OF_B        AGE                                                               
---------------------------------------------------------------------------------------------------- --------------- --------- ----------                                                               
ADDRESS                                                                                                                                                                                                 
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
          6 Nandhini                                           Ravi                                                                                                                                     
nandhini.ravi@gmail.com                                                                              9876545678      30-JUL-03         23                                                               
Erode                                                                                                                                                                                                   
                                                                                                                                                                                                        
1 row selected.

SQL> DELETE FROM Customer
  2  WHERE Email = 'meena.krishnan@gmail.com';

1 row deleted.

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

SQL> COMMIT;

Commit complete.
