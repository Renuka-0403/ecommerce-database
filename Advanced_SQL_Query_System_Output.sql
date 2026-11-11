SQL> SELECT Order_ID,
  2  	    Customer_ID,
  3  	    Order_Date,
  4  	    Total_Amount
  5  FROM Orders
  6  WHERE Total_Amount >
  7  	   (SELECT AVG(Total_Amount)
  8  	    FROM Orders)
  9  ORDER BY Total_Amount DESC;

  ORDER_ID CUSTOMER_ID ORDER_DAT TOTAL_AMOUNT                                                                                                                                                           
---------- ----------- --------- ------------                                                                                                                                                           
      1008           8 08-SEP-26        12999                                                                                                                                                           
      1005           5 05-SEP-26         7499                                                                                                                                                           
      1001           1 15-SEP-26         6999                                                                                                                                                           
      1004           4 04-SEP-26         5999                                                                                                                                                           

4 rows selected.
 
SQL> SELECT Product_ID,
  2  	    Product_Name,
  3  	    Price
  4  FROM Product
  5  WHERE Price >
  6  	   (SELECT AVG(Price)
  7  	    FROM Product)
  8  ORDER BY Price DESC;

PRODUCT_ID PRODUCT_NAME                                                                                              PRICE                                                                              
---------- ---------------------------------------------------------------------------------------------------- ----------                                                                              
       108 Royal Gold Edition                                                                                        12999                                                                              
       105 Smart Active Watch                                                                                         7499                                                                              
       104 Smart Fit Pro                                                                                              5999                                                                              

3 rows selected.
 
SQL> SELECT Product_ID,
  2  	    Product_Name,
  3  	    Price
  4  FROM Product
  5  WHERE Price <
  6  	   (SELECT AVG(Price)
  7  	    FROM Product)
  8  ORDER BY Price ASC;

PRODUCT_ID PRODUCT_NAME                                                                                              PRICE                                                                              
---------- ---------------------------------------------------------------------------------------------------- ----------                                                                              
       103 Digital Sport Watch                                                                                        1999                                                                              
       101 Classic Silver Watch                                                                                       2799                                                                              
       102 Elegant Gold Watch                                                                                         4299                                                                              
       106 Sports Chronograph                                                                                         4599                                                                              
       107 Outdoor Pro Watch                                                                                          5299                                                                              

5 rows selected.
 
SQL> SELECT Customer_ID,
  2  	    SUM(Total_Amount) AS Total_Purchase
  3  FROM Orders
  4  GROUP BY Customer_ID
  5  ORDER BY Total_Purchase DESC;

CUSTOMER_ID TOTAL_PURCHASE                                                                                                                                                                              
----------- --------------                                                                                                                                                                              
          8          12999                                                                                                                                                                              
          5           7499                                                                                                                                                                              
          1           6999                                                                                                                                                                              
          4           5999                                                                                                                                                                              
          7           5299                                                                                                                                                                              
          6           4599                                                                                                                                                                              
          2           3999                                                                                                                                                                              
          9           2499                                                                                                                                                                              
          3           1999                                                                                                                                                                              

9 rows selected.
 
SQL> SELECT MAX(Total_Purchase) AS Maximum_Purchase
  2  FROM
  3  (
  4  	 SELECT Customer_ID,
  5  		SUM(Total_Amount) AS Total_Purchase
  6  	 FROM Orders
  7  	 GROUP BY Customer_ID
  8  );

MAXIMUM_PURCHASE                                                                                                                                                                                        
----------------                                                                                                                                                                                        
           12999                                                                                                                                                                                        

1 row selected.
 
SQL> SELECT c.Customer_ID,
  2  	    c.First_Name,
  3  	    c.Last_Name,
  4  	    SUM(o.Total_Amount) AS Total_Purchase
  5  FROM Customer c
  6  INNER JOIN Orders o
  7  ON c.Customer_ID = o.Customer_ID
  8  GROUP BY c.Customer_ID,
  9  	      c.First_Name,
 10  	      c.Last_Name
 11  HAVING SUM(o.Total_Amount) =
 12  	    (
 13  		SELECT MAX(Total_Purchase)
 14  		FROM
 15  		(
 16  		    SELECT SUM(Total_Amount) AS Total_Purchase
 17  		    FROM Orders
 18  		    GROUP BY Customer_ID
 19  		)
 20  	    );

CUSTOMER_ID FIRST_NAME                                         LAST_NAME                                          TOTAL_PURCHASE                                                                        
----------- -------------------------------------------------- -------------------------------------------------- --------------                                                                        
          8 Swetha                                             Balaji                                                      12999                                                                        

1 row selected.
 
SQL> SELECT c.Customer_ID,
  2  	    c.First_Name,
  3  	    c.Last_Name,
  4  	    o.Order_ID,
  5  	    o.Total_Amount
  6  FROM Customer c
  7  INNER JOIN Orders o
  8  ON c.Customer_ID = o.Customer_ID
  9  WHERE o.Total_Amount >
 10  	   (
 11  	       SELECT AVG(Total_Amount)
 12  	       FROM Orders
 13  	   )
 14  ORDER BY o.Total_Amount DESC;

CUSTOMER_ID FIRST_NAME                                         LAST_NAME                                            ORDER_ID TOTAL_AMOUNT                                                               
----------- -------------------------------------------------- -------------------------------------------------- ---------- ------------                                                               
          8 Swetha                                             Balaji                                                   1008        12999                                                               
          5 Keerthana                                          Mohan                                                    1005         7499                                                               
          1 Renu                                               Srinivasan                                               1001         6999                                                               
          4 Rahul                                              Sharma                                                   1004         5999                                                               

4 rows selected.

SQL> SELECT p.Product_ID,
  2  	    p.Product_Name,
  3  	    SUM(od.Subtotal) AS Total_Sales
  4  FROM Product p
  5  INNER JOIN Order_Details od
  6  ON p.Product_ID = od.Product_ID
  7  GROUP BY p.Product_ID,
  8  	      p.Product_Name
  9  HAVING SUM(od.Subtotal) >
 10  	    (
 11  		SELECT AVG(Product_Sales)
 12  		FROM
 13  		(
 14  		    SELECT SUM(Subtotal) AS Product_Sales
 15  		    FROM Order_Details
 16  		    GROUP BY Product_ID
 17  		)
 18  	    )
 19  ORDER BY Total_Sales DESC;

PRODUCT_ID PRODUCT_NAME                                                                                         TOTAL_SALES                                                                             
---------- ---------------------------------------------------------------------------------------------------- -----------                                                                             
       108 Royal Gold Edition                                                                                         12999                                                                             
       103 Digital Sport Watch                                                                                         7996                                                                             
       105 Smart Active Watch                                                                                          7499                                                                             

3 rows selected.

SQL> SELECT c.Customer_ID,
  2  	    c.First_Name,
  3  	    c.Last_Name,
  4  	    COUNT(o.Order_ID) AS Total_Orders,
  5  	    SUM(o.Total_Amount) AS Total_Purchase,
  6  	    AVG(o.Total_Amount) AS Average_Order_Value
  7  FROM Customer c
  8  INNER JOIN Orders o
  9  ON c.Customer_ID = o.Customer_ID
 10  GROUP BY c.Customer_ID,
 11  	      c.First_Name,
 12  	      c.Last_Name
 13  ORDER BY Total_Purchase DESC;

CUSTOMER_ID FIRST_NAME                                         LAST_NAME                                          TOTAL_ORDERS TOTAL_PURCHASE AVERAGE_ORDER_VALUE                                       
----------- -------------------------------------------------- -------------------------------------------------- ------------ -------------- -------------------                                       
          8 Swetha                                             Balaji                                                        1          12999               12999                                       
          5 Keerthana                                          Mohan                                                         1           7499                7499                                       
          1 Renu                                               Srinivasan                                                    1           6999                6999                                       
          4 Rahul                                              Sharma                                                        1           5999                5999                                       
          7 Karthik                                            Prakash                                                       1           5299                5299                                       
          6 Nandhini                                           Ravi                                                          1           4599                4599                                       
          2 Arjun                                              Kumar                                                         1           3999                3999                                       
          9 Vignesh                                            Ganesh                                                        1           2499                2499                                       
          3 Priya                                              Kumar                                                         1           1999                1999                                       

9 rows selected.

SQL> SELECT p.Product_ID,
  2  	    p.Product_Name,
  3  	    COUNT(DISTINCT od.Order_ID) AS Number_of_Orders,
  4  	    SUM(od.Quantity) AS Total_Quantity_Sold,
  5  	    SUM(od.Subtotal) AS Total_Sales,
  6  	    AVG(od.Unit_Price) AS Average_Price
  7  FROM Product p
  8  INNER JOIN Order_Details od
  9  ON p.Product_ID = od.Product_ID
 10  GROUP BY p.Product_ID,
 11  	      p.Product_Name
 12  ORDER BY Total_Sales DESC;

PRODUCT_ID PRODUCT_NAME                                                                                         NUMBER_OF_ORDERS TOTAL_QUANTITY_SOLD TOTAL_SALES AVERAGE_PRICE                          
---------- ---------------------------------------------------------------------------------------------------- ---------------- ------------------- ----------- -------------                          
       108 Royal Gold Edition                                                                                                  1                   1       12999         12999                          
       103 Digital Sport Watch                                                                                                 2                   4        7996          1999                          
       105 Smart Active Watch                                                                                                  1                   1        7499          7499                          
       104 Smart Fit Pro                                                                                                       1                   1        5999          5999                          
       107 Outdoor Pro Watch                                                                                                   1                   1        5299          5299                          
       101 Classic Silver Watch                                                                                                2                   2        4998          2499                          
       106 Sports Chronograph                                                                                                  1                   1        4599          4599                          
       102 Elegant Gold Watch                                                                                                  1                   1        3999          3999                          

8 rows selected.

SQL> SELECT cat.Category_ID,
  2  	    COUNT(DISTINCT od.Order_ID) AS Total_Orders,
  3  	    SUM(od.Quantity) AS Total_Quantity_Sold,
  4  	    SUM(od.Subtotal) AS Total_Sales,
  5  	    AVG(od.Unit_Price) AS Average_Price
  6  FROM Category cat
  7  INNER JOIN Product p
  8  ON cat.Category_ID = p.Category_ID
  9  INNER JOIN Order_Details od
 10  ON p.Product_ID = od.Product_ID
 11  GROUP BY cat.Category_ID
 12  ORDER BY Total_Sales DESC;

CATEGORY_ID TOTAL_ORDERS TOTAL_QUANTITY_SOLD TOTAL_SALES AVERAGE_PRICE                                                                                                                                  
----------- ------------ ------------------- ----------- -------------                                                                                                                                  
          3            2                   2       13498          6749                                                                                                                                  
          5            1                   1       12999         12999                                                                                                                                  
          4            2                   2        9898          4949                                                                                                                                  
          1            3                   3        8997          2999                                                                                                                                  
          2            2                   4        7996          1999                                                                                                                                  

5 rows selected.

SQL> COMMIT;

Commit complete.

