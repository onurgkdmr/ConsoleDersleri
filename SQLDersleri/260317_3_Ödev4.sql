-- ÖDEVLER:

-- Northwind  için;
--1) Her bir üründen kaç adet satıldığını veren vw_UrunSatislari adında view yapınız.
--2) Her bir müşterinin kaç ürün aldığını hesaplayan vw_MusteriUrunSayisi adında view yapınız.
--3) Her bir personelin getirdiği getiri toplamını hesaplayan vw_PersonelGetirileri adında view kodlayınız.

use Nortwinddb

-- Nortwind için:

-- SORU 1:

-- View için script;
select 
p.ProductName, 
SUM(od.Quantity) as 'Satış Miktarı'
from Products as p
inner join [Order Details] as od on od.ProductID=p.ProductID
group by p.ProductName

-- View oluşturma;
go
create view vw_UrunSatislari
as
select 
p.ProductName, 
SUM(od.Quantity) as 'Satış Miktarı'
from Products as p
inner join [Order Details] as od on od.ProductID=p.ProductID
group by p.ProductName
go

-- View güncelleme;
go
alter view vw_UrunSatislari
as
select 
p.ProductName as 'Ürün Adı', 
SUM(od.Quantity) as 'Satış Miktarı'
from Products as p
inner join [Order Details] as od on od.ProductID=p.ProductID
group by p.ProductName
go

select *from vw_UrunSatislari

--------------------------------------------------------------------

-- SORU 2:

-- View için script;
select 
c.CompanyName,
COUNT(o.OrderID) as 'Sipariş Sayısı'
from Customers as c
inner join Orders as o on o.CustomerID=c.CustomerID
group by c.CompanyName

-- View oluşturma;
go
create view vw_MusteriUrunSayisi
as
select 
c.CompanyName,
COUNT(o.OrderID) as 'Sipariş Sayısı'
from Customers as c
inner join Orders as o on o.CustomerID=c.CustomerID
group by c.CompanyName
go

-- View güncelleme;
go
alter view vw_MusteriUrunSayisi
as
select 
c.CompanyName as 'Firma Adı',
COUNT(o.OrderID) as 'Sipariş Sayısı'
from Customers as c
inner join Orders as o on o.CustomerID=c.CustomerID
group by c.CompanyName
go

select *from vw_MusteriUrunSayisi

--------------------------------------------------------------------

-- SORU 3:

-- View için script;
select 
e.FirstName,e.LastName,e.Title,
SUM(od.UnitPrice) as 'Gelirlerin Toplamı'
from Employees as e
inner join Orders as o on o.EmployeeID=e.EmployeeID
inner join [Order Details] as od on od.OrderID=o.OrderID
group by e.FirstName,e.LastName,e.Title


-- View oluşturma;
go
create view vw_PersonelGetirileri
as
select 
e.FirstName,e.LastName,e.Title,
SUM(od.UnitPrice) as 'Gelirlerin Toplamı'
from Employees as e
inner join Orders as o on o.EmployeeID=e.EmployeeID
inner join [Order Details] as od on od.OrderID=o.OrderID
group by e.FirstName,e.LastName,e.Title
go

-- View güncelleme;
go
alter view vw_PersonelGetirileri
as
select 
e.FirstName as 'Personel Adı',
e.LastName as [Personel Soyadı],
e.Title Ünvanı,
SUM(od.UnitPrice) as 'Gelirlerin Toplamı'
from Employees as e
inner join Orders as o on o.EmployeeID=e.EmployeeID
inner join [Order Details] as od on od.OrderID=o.OrderID
group by e.FirstName,e.LastName,e.Title
go

select *from vw_PersonelGetirileri

