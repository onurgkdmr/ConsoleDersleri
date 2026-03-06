use Northwind
-- ***************************************************
-- 05 Mart Perşembe 2026 SQL Dersleri - Join devamı
-- ***************************************************

-- En fazla siparişte görev alan personelin hangi ürün siparişlerinde görev aldığını ürün, birim fiyat, satış fiyatı, satılan miktar, mevcut stok ve personel bilgilerini veren scripti kodlayınız.
select
e.FirstName,
e.LastName,
p.ProductName,
SUM(od.UnitPrice) as 'Satış Fiyatı',
SUM(od.Quantity) as [Satılan Adet],
p.UnitsInStock,
p.UnitPrice
from Employees as e 
inner join Orders as o on o.EmployeeID=e.EmployeeID
inner join [Order Details] as od on od.OrderID=o.OrderID
inner join Products as p on p.ProductID=od.ProductID
where e.EmployeeID in (select top 1 EmployeeID Sayı from Orders group by EmployeeID order by Sayı desc)
group by e.FirstName,e.LastName,p.ProductName,p.UnitPrice,p.UnitsInStock
order by p.ProductName

-- En az sipariş veren müşterinin müşteri bilgileri ile beraber hangi ürünleri sipariş ettiğini hesaplayınız.

select top 1 CustomerID, COUNT(OrderID) Sayı from Orders
group by CustomerID order by Sayı asc

-------------------------------------------------------------

select *from Customers as c
inner join Orders as o on o.CustomerID=c.CustomerID
inner join [Order Details] as od on od.OrderID=o.OrderID
inner join Products as p on p.ProductID=od.ProductID

-------------------------------------------------------------

select 
p.ProductID,p.ProductName,SanalTablo.Sayı
from
(select CustomerID,COUNT(OrderID) Sayı from Orders
group by CustomerID) as SanalTablo

inner join Customers as c on c.CustomerID=SanalTablo.CustomerID
inner join Orders as o on o.CustomerID=c.CustomerID
inner join [Order Details] as od on od.OrderID=o.OrderID
inner join Products as p on p.ProductID=od.ProductID
--where Sayı=2
group by p.ProductName,SanalTablo.Sayı,p.ProductID
order by Sayı

--------------------------------------------------------------

select 
p.ProductID,p.ProductName,SanalTablo.Sayı
from
(select CustomerID,COUNT(OrderID) Sayı from Orders
group by CustomerID) as SanalTablo

inner join Customers as c on c.CustomerID=SanalTablo.CustomerID
inner join Orders as o on o.CustomerID=c.CustomerID
inner join [Order Details] as od on od.OrderID=o.OrderID
inner join Products as p on p.ProductID=od.ProductID
where Sayı= (select top 1 MIN(COUNT(OrderID)) Over() from Orders group by CustomerID)
group by p.ProductName,SanalTablo.Sayı,p.ProductID
order by Sayı

-- Over() => Group by ile birlikte çalışır.
select top 1 MIN(COUNT(OrderID)) Over() from Orders group by CustomerID

--------------------------------------------------------------------------------------




-- ONUR