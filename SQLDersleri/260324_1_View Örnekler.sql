-- ************************************************
-- **********************************
-- 24 Mart 2026 SQL Dersleri
-- **********************************

-- View Örnekler:

-- View nedir?
-- Sanal tablolardýr. Crud yapýlmaz. Parametre almaz. Tablolarýn izini taþýr ve performans için iyi deðildir.

--go
--create view ViewName
--as
--script (kod)
--go

use NorthwindDB

-- Her bir kategoride kaç ürün satýldýðýný hesaplayan vw_Categori_Order_Details adýnda view içinde kodlayýnýz.

select 
c.CategoryName,
SUM(od.Quantity) as 'Satýlan Ürün Miktarý'
from Categories as c
inner join Products as p on p.CategoryID=c.CategoryID
inner join [Order Details] as od on od.ProductID=p.ProductID
group by c.CategoryName

go
create view vw_Categori_Order_Details
as
select 
c.CategoryName,
SUM(od.Quantity) as 'Satýlan Ürün Miktarý'
from Categories as c
inner join Products as p on p.CategoryID=c.CategoryID
inner join [Order Details] as od on od.ProductID=p.ProductID
group by c.CategoryName
go

go
alter view vw_Categori_Order_Details
as
select 
c.CategoryID,
c.CategoryName as 'Kategori Adý',
SUM(od.Quantity) as 'Satýlan Ürün Miktarý'
from Categories as c
inner join Products as p on p.CategoryID=c.CategoryID
inner join [Order Details] as od on od.ProductID=p.ProductID
group by c.CategoryID,c.CategoryName
go

select *from vw_Categori_Order_Details