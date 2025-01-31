-- QUESTION 1

SELECT CategoryName, DESCRIPTION
FROM CATEGORIES
ORDER BY CATEGORYNAME;

-- QUESTION 2
SELECT  CONTACTNAME, COMPANYNAME, CONTACTTITLE, PHONE NUMBER
 FROM    CUSTOMERS
     ORDER BY PHONE;
     
-- QUESTI0N 3
SELECT UPPER(FIRSTNAME) AS FirstName, UPPER(LASTNAME) AS LastName
FROM EMPLOYEES;

-- QUESTION 3B
SELECT UPPER(FIRSTNAME) AS FirstName, upper(LASTNAME) as LastName, HIREDATE
FROM employees
order by HireDate DESC;

-- QUESTIONS 4
SELECT ORDERID, ORDERDATE, SHIPPEDDATE, CUSTOMERID, FREIGHT
FROM orders
ORDER BY FREIGHT DESC
LIMIT  10;

-- QUESTION 5
SELECT lower(CUSTOMERID) AS ID
FROM CUSTOMERS;

-- QUESTION 6
SELECT COMPANYNAME, FAX, PHONE, COUNTRY, HOMEPAGE
FROM SUPPLIERS
order by COUNTRY DESC;

-- QUESTION 6B

SELECT COMPANYNAME, FAX, PHONE, COUNTRY, HOMEPAGE
FROM SUPPLIERS
order by COMPANYNAME ASC;

-- QUESTION 7
SELECT COMPANYNAME, CONTACTNAME, CITY
FROM customers
WHERE CITY IN ("BUENOS AIRES");

-- QUESTION 8
SELECT ProductName, UnitPrice, QuantityPerUnit
FROM products
WHERE UnitsInStock = 0;

-- QUESTION 9
SELECT CONTACTNAME, ADDRESS, CITY
FROM CUSTOMERS
WHERE CITY NOT IN ("GERMANY, MEXICO, SPAIN");

-- QUESTION 10
SELECT ORDERDATE, SHIPPEDDATE, CUSTOMERID, FREIGHT
FROM orders
WHERE OrderDate = ( "1996-05-21");

-- QUESTION 11
SELECT FIRSTNAME, LASTNAME, COUNTRY
FROM EMPLOYEES
WHERE COUNTRY NOT IN ("USA");

-- QUESTION 12
SELECT EMPLOYEEID, ORDERID, CUSTOMERID, REQUIREDDATE, SHIPPEDDATE
FROM orders
WHERE SHIPPEDDATE > REQUIREDDATE;

-- QUESTION 13
SELECT CITY, COMPANYNAME, CONTACTNAME
FROM customers
WHERE CITY LIKE "A%" OR CITY LIKE "B%";

-- QUESTION 14
SELECT ORDERID
FROM ORDERS
WHERE MOD(orderID,2)=0;

-- QUESTION 15
SELECT *
FROM ORDERS
WHERE FREIGHT > "$500";

-- QUESTION 16
SELECT PRODUCTNAME, UNITSINSTOCK, UNITSONORDER, REORDERLEVEL
FROM PRODUCTS
WHERE REORDERLEVEL <> 0;

-- QUESTION 17
SELECT COMPANYNAME, CONTACTNAME, PHONE
FROM CUSTOMERS
WHERE FAX IS NULL;

-- QUESTION 18
SELECT FIRSTNAME, LASTNAME, REPORTSTO
FROM EMPLOYEES
WHERE REPORTSTO IS NULL;

-- QUESTION 19
SELECT ORDERID
FROM ORDERS
WHERE MOD(ORDERID, 2) <> 0;

-- QUESTION 20
SELECT COMPANYNAME, CONTACTNAME, FAX
FROM CUSTOMERS
WHERE FAX IS NULL
order by CONTACTNAME;

-- QUESTION 21
SELECT CITY, COMPANYNAME, CONTACTNAME
FROM CUSTOMERS
WHERE CITY LIKE "%L%"
order by CONTACTNAME;

-- QUESTION 22
SELECT FIRSTNAME, LASTNAME, BIRTHDATE
FROM EMPLOYEES
where birthdate between "1952-02-19" AND "1958-01-09";

-- QUESTION 23
SELECT FIRSTNAME, LASTNAME, BIRTHDATE AS BIRTHYEAR
FROM EMPLOYEES;

-- QUESTION 24 ****
SELECT ORDERID, count(orderid) as NUMBEROFORDERS
FROM (`order details`)
group by ORDERID
 order BY NUMBEROFORDERS DESC;
 
 -- QUESTION 25
 SELECT SHIPPOSTALCODE, ORDERID, ORDERDATE, REQUIREDDATE, SHIPPEDDATE, SHIPADDRESS
 FROM ORDERS
 WHERE SHIPPOSTALCODE LIKE "98124%";
 
 -- QUESTION 26
 SELECT CONTACTNAME, CONTACTTITLE, COMPANYNAME
 FROM CUSTOMERS
 WHERE CONTACTTITLE NOT LIKE "%SALES%";
 
 -- QUESTION 27
 SELECT LASTNAME, FIRSTNAME, CITY
 FROM EMPLOYEES
 WHERE CITY NOT IN ("SEATTLE");
 
 -- QUESTION 28
 SELECT COMPANYNAME, CONTACTTITLE, CITY, COUNTRY
 FROM CUSTOMERS
 WHERE COUNTRY IN ("MEXICO" , "SPAIN")
 AND CITY NOT IN ("MADRID");
 
 -- QUESTION 29
 
 -- QUESTION 30
 SELECT CONTACTNAME
 FROM CUSTOMERS
 WHERE CONTACTNAME NOT LIKE "_A%";
 
 DONE DONE DONE!!!!!!!