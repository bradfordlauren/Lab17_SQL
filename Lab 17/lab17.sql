--1
select*
from Customers

--2
select distinct country
from Customers

--3
select * from Customers 
where 
CustomerID like 'Bl%'

--4
select top 100* from Orders

--5
select* from Customers
where 
PostalCode = '1010' or 
PostalCode = '3012' or
PostalCode = '12209' or
PostalCode = '05023' 

--6
select * from Orders
where
ShipRegion > 'NULL'

--7
select*
from Customers
order by Country, city 

--8
GO

Insert Into
[dbo].[Customers]
           ([CustomerID]
           ,[CompanyName]
           ,[ContactName]
           ,[ContactTitle]
           ,[Address]
           ,[City]
           ,[Region]
           ,[PostalCode]
           ,[Country]
           ,[Phone]
           ,[Fax])

     VALUES
           ('KINGS'
           ,'Lola Bee'
           ,'Lauren Bradford'
           ,'Sales Agent'
           ,'123 Main St'
           ,'Detroit'
           ,'NULL'
           ,'48235'
           ,'USA'
           ,'313-532-2932'
           ,'NULL')

--9
		   GO

UPDATE [dbo].[Orders]
   SET 
      [ShipRegion] = 'EuroZone'

 WHERE ShipCountry = 'France'
GO

--10

GO

DELETE FROM [dbo].[Order Details]
      WHERE Quantity = 1


--11
select AVG(quantity) as 'Average Quantity', MAX(quantity) as 'MAX Quantity' , MIN(quantity) as 'MIN Quantity'
from [Order Details]

--12
select AVG(quantity) as 'Average Quantity', MAX(quantity) as 'MAX Quantity' , MIN(quantity) as 'MIN Quantity'
from [Order Details]
group by OrderID

--13
select  CustomerID
from Orders
where OrderID=10290

--14
SELECT Orders.CustomerID, Customers.CustomerID
FROM Orders
INNER JOIN Customers
ON Orders.CustomerID = Customers.CustomerID;

SELECT Orders.CustomerID, Customers.CustomerID
FROM Orders
Left JOIN Customers
ON Orders.CustomerID = Customers.CustomerID;

SELECT Orders.CustomerID, Customers.CustomerID
FROM Orders
Right JOIN Customers
ON Orders.CustomerID = Customers.CustomerID;

--15
Select Employees.FirstName
from Employees
where ReportsTo is null

--16
Select Employees.FirstName
from Employees
where ReportsTo = 2

