CREATE TABLE Customer (
    Customer_ID NUMBER PRIMARY KEY,
    First_Name VARCHAR2(50) NOT NULL,
    Last_Name VARCHAR2(50) NOT NULL,
    Email VARCHAR2(100) UNIQUE NOT NULL,
    Phone VARCHAR2(15),
    Date_of_Birth DATE,
    Age NUMBER,
    Address VARCHAR2(255)
);
INSERT INTO Customer (Customer_ID, First_Name, Last_Name, Email, Phone, Date_of_Birth, Age, Address)
VALUES (1, 'Renu', 'Srinivasan', 'renu@gmail.com', '9876543210', TO_DATE('15-06-2005','DD-MM-YYYY'), 20, 'Chennai');

INSERT INTO Customer (Customer_ID, First_Name, Last_Name, Email, Phone, Date_of_Birth, Age, Address)
VALUES (2, 'Ananya', 'Raj', 'ananya.raj@gmail.com', '9876501234', TO_DATE('22-09-2004','DD-MM-YYYY'), 21, 'Coimbatore');

INSERT INTO Customer (Customer_ID, First_Name, Last_Name, Email, Phone, Date_of_Birth, Age, Address)
VALUES (3, 'Priya', 'Kumar', 'priya.kumar@gmail.com', '9876512345', TO_DATE('08-12-2003','DD-MM-YYYY'), 22, 'Madurai');

INSERT INTO Customer (Customer_ID, First_Name, Last_Name, Email, Phone, Date_of_Birth, Age, Address)
VALUES (4, 'Divya', 'Shankar', 'divya.shankar@gmail.com', '9876523456', TO_DATE('10-04-2004','DD-MM-YYYY'), 21, 'Salem');

INSERT INTO Customer (Customer_ID, First_Name, Last_Name, Email, Phone, Date_of_Birth, Age, Address)
VALUES (5, 'Keerthana', 'Mohan', 'keerthana.mohan@gmail.com', '9876534567', TO_DATE('18-02-2005','DD-MM-YYYY'), 20, 'Trichy');

INSERT INTO Customer (Customer_ID, First_Name, Last_Name, Email, Phone, Date_of_Birth, Age, Address)
VALUES (6, 'Nandhini', 'Ravi', 'nandhini.ravi@gmail.com', '9876545678', TO_DATE('30-07-2003','DD-MM-YYYY'), 22, 'Erode');

INSERT INTO Customer (Customer_ID, First_Name, Last_Name, Email, Phone, Date_of_Birth, Age, Address)
VALUES (7, 'Harini', 'Prakash', 'harini.prakash@gmail.com', '9876556789', TO_DATE('05-11-2004','DD-MM-YYYY'), 21, 'Vellore');

INSERT INTO Customer (Customer_ID, First_Name, Last_Name, Email, Phone, Date_of_Birth, Age, Address)
VALUES (8, 'Swetha', 'Balaji', 'swetha.balaji@gmail.com', '9876567890', TO_DATE('12-09-2005','DD-MM-YYYY'), 20, 'Tirunelveli');
INSERT INTO Customer (Customer_ID, First_Name, Last_Name, Email, Phone, Date_of_Birth, Age, Address)
VALUES (9, 'Aishwarya', 'Ganesh', 'aishwarya.ganesh@gmail.com', '9876578901', TO_DATE('25-03-2003','DD-MM-YYYY'), 22, 'Thanjavur');

INSERT INTO Customer (Customer_ID, First_Name, Last_Name, Email, Phone, Date_of_Birth, Age, Address)
VALUES (10, 'Meena', 'Krishnan', 'meena.krishnan@gmail.com', '9876589012', TO_DATE('16-08-2004','DD-MM-YYYY'), 21, 'Kanchipuram');

COMMIT;

SELECT * FROM Customer;

SELECT * FROM Customer
WHERE Customer_ID = 1;

SELECT * FROM Customer
WHERE Email = 'renu@gmail.com';

SELECT * FROM Customer
WHERE Age > 20;

SELECT * FROM Customer
WHERE Address = 'Chennai';
SELECT Customer_ID, First_Name, Last_Name
FROM Customer;

SELECT *
FROM Customer
ORDER BY First_Name;

SELECT COUNT(*) AS Total_Customers
FROM Customer;

UPDATE Customer
SET Phone = '9123456789'
WHERE Customer_ID = 1;

UPDATE Customer
SET Address = 'Anna Nagar, Chennai'
WHERE Customer_ID = 2;

UPDATE Customer
SET Email = 'priya.new@gmail.com'
WHERE Customer_ID = 3;
SELECT Customer_ID, First_Name, Last_Name
FROM Customer;

SELECT *
FROM Customer
ORDER BY First_Name;

SELECT COUNT(*) AS Total_Customers
FROM Customer;

UPDATE Customer
SET Phone = '9123456789'
WHERE Customer_ID = 1;

UPDATE Customer
SET Address = 'Anna Nagar, Chennai'
WHERE Customer_ID = 2;

UPDATE Customer
SET Email = 'priya.new@gmail.com'
WHERE Customer_ID = 3;
UPDATE Customer
SET Age = 23
WHERE Customer_ID = 6;

COMMIT;

SELECT * FROM Customer;

DELETE FROM Customer
WHERE Customer_ID = 10;

DELETE FROM Customer
WHERE Email = 'meena.krishnan@gmail.com';

COMMIT;

SELECT * FROM Customer;