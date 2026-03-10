-- *********************************************
-- 5 Mart Perşembe 2026 SQL Dersleri
-- *********************************************
use Northwind
-- JOIN DEVAMI:

-- En fazla siparişte görev alan personelin hangi ürün siparişlerinde görev aldığını Ürün Adı, Birim Fiyat, Satış Fiyatı, Satılan Miktar, Mevcut Stok ve Personel Bilgilerini veren scripti kodlayınız.

select *from Employees
select *from Orders
select *from [Order Details]

select
e.FirstName,
e.LastName,
p.ProductName,
SUM(od.UnitPrice) as 'Satış Fiyatı',
SUM(od.Quantity) as 'Satılan Miktar',
p.Unitprice, 
p.UnitsInStock
from Employees as e
inner join Orders as o on o.EmployeeID=e.EmployeeID
inner join [Order Details] as od on od.OrderID=o.OrderID
inner join Products as p on p.ProductID=od.ProductID
where e.EmployeeID in (select top 1 EmployeeID Sayı from Orders group by EmployeeID order by Sayı desc)
group by e.FirstName, e.LastName, p.ProductName, p.UnitPrice, p.UnitsInStock
order by p.ProductName

-- En az sipariş veren müşterinin müşteri bilgileri ile beraber hangi ürünleri sipariş ettiğini hesaplayınız.

select *from Customers
select *from Orders
select *from [Order Details]
select *from Products

-----------------------------------------------------------------------

select top 1 MIN(COUNT(OrderID)) over () as MinSayi from Orders
group by CustomerID

-----------------------------------------------------------------------

select top 1 CustomerID, COUNT(OrderID) Sayı from Orders
group by CustomerID order by Sayı asc

-----------------------------------------------------------------------

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