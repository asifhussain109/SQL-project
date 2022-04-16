# question 1. 
select ProductName, QuantityPerUnit from northwind.products;


# question 2. 
select productid, productname from northwind.products; 


# question 3. 
select productid, productname from northwind.products where discontinued = 1 order by productname; 


# question 4. 
select productname, unitprice from northwind.products order by unitprice desc;


# question 5. 
select productid, productname, unitprice from northwind.products where unitprice < 20 order by unitprice;


# question 6. 
select productid, productname, unitprice from northwind.products where unitprice between 15 and 25 order by unitprice;


# question 7. 
select productid, productname, unitprice from northwind.products where unitprice > (select avg(unitprice) from northwind.products) order by unitprice;


# question 8. 
select productid, productname, unitprice from northwind.products order by unitprice desc limit 10;


# question 9. 
select count(productname) from northwind.products group by discontinued;


# question 10. 
select productname, unitsonorder, unitsinstock from northwind.products where unitsonorder > unitsinstock;