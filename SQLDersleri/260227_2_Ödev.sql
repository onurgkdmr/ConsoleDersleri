use Northwind
-- ÖDEV

-- 1) Her bir üründen kaç tane satıldığını ürün adı, birim fiyatı, kalan stok şeklinde gösteriniz.
-- 2) Her bir siparişte kaç ürün olduğunu getiren scripti kodlayınız.
-- 3) Her bir müşterinin aldığı ürün sayısı Firma adı, Firma yetkili ad-soyad, şehir ve ülke şeklinde hesaplayınız.

-- SORU-1:
select *from Products
select *from [Order Details]
select 
(select p.ProductName from Products as p where p.ProductID=o.ProductID) as 'Ürün Adı',
Quantity as 'Satılan Ürün Adeti',
UnitPrice as 'Birim Fiyatı',
(select p.UnitsInStock from Products as p where p.ProductID=o.ProductID) as 'Kalan stok miktarı'
from [Order Details] as o

select
(select o.Quantity from [Order Details] as o where o.ProductID=p.ProductID) as 'Satılan Ürün Adeti',
ProductName as 'Ürün Adı',
Unitprice as 'Birim Fiyatı',
UnitsInStock as 'Kalan Stok Miktarı'
from Products as p

-- SORU-2:
select *from Orders
select *from Products