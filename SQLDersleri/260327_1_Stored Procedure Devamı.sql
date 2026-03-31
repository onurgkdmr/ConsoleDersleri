-- **********************************************
-- 27 Mart 2026 SQL Dersleri
-- **********************************************
-- Stored Procedure DEVAMI

use NorthwindDB

-- Ürün araması yapan sp_Urun_Satis_Sonuc_Ara adında bir sp için arama sonuçlarını fiyat,stok bilgilerini veren yapıyı kodlayınız.

declare @aranacakUrunAdiKelimesi nvarchar(250)='chan'
select 
p.ProductName as 'Ürün Adı',
p.UnitPrice as 'Birim Fiyatı',
p.UnitsInStock as 'Mevcut Stok',
od.UnitPrice as 'Satış Fiyatı',
--od.Quantity as 'Satılan Adet' 
SUM(od.Quantity) as 'Satılan Adet'
from Products as p
inner join [Order Details] as od on od.ProductID=p.ProductID
where p.ProductName like '%'+@aranacakUrunAdiKelimesi+'%'
group by p.ProductName,p.UnitPrice,p.UnitsInStock,od.UnitPrice

go
create procedure sp_Urun_Satis_Sonuc_Ara
(
@aranacakUrunAdiKelimesi nvarchar(250)
)
as
begin
select 
p.ProductName as 'Ürün Adı',
p.UnitPrice as 'Birim Fiyatı',
p.UnitsInStock as 'Mevcut Stok',
od.UnitPrice as 'Satış Fiyatı',
--od.Quantity as 'Satılan Adet' 
SUM(od.Quantity) as 'Satılan Adet'
from Products as p
inner join [Order Details] as od on od.ProductID=p.ProductID
where p.ProductName like '%'+@aranacakUrunAdiKelimesi+'%'
group by p.ProductName,p.UnitPrice,p.UnitsInStock,od.UnitPrice
end
go

exec sp_Urun_Satis_Sonuc_Ara 'br'

-- Tarih verildiğinde o tarihte hangi siparişleri olduğunu sipariş,müşteri bilgilerini getiren sp_Musteri_Satis_Rapor sp adı ile kodlayınız.

select *from Orders
select *from [Order Details]

declare @tarih datetime='1996.07.04'
select 
o.OrderDate,c.CompanyName,
SUM(od.Quantity) as 'Satılan Adet'
from Orders as o
inner join [Order Details] as od on od.OrderID=o.OrderID
inner join Customers as c on c.CustomerID=o.CustomerID
where o.OrderDate=@tarih
group by o.OrderDate,c.CompanyName

go
create procedure sp_Musteri_Satis_Rapor
(
@tarih datetime
)
as
begin
select 
o.OrderDate,c.CompanyName,
SUM(od.Quantity) as 'Satılan Adet'
from Orders as o
inner join [Order Details] as od on od.OrderID=o.OrderID
inner join Customers as c on c.CustomerID=o.CustomerID
where o.OrderDate=@tarih
group by o.OrderDate,c.CompanyName
end
go

exec sp_Musteri_Satis_Rapor '1998.01.02'

