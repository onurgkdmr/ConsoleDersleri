use Northwind
-- ÖDEV

-- 1) Her bir üründen kaç tane satıldığını ürün adı, birim fiyatı, kalan stok şeklinde gösteriniz.
-- 2) Her bir siparişte kaç ürün olduğunu getiren scripti kodlayınız.
-- 3) Her bir müşterinin aldığı ürün sayısını Firma adı, Firma yetkili ad-soyad, şehir ve ülke şeklinde hesaplayınız.

-- SORU-1:

select *from Products
select *from [Order Details]
select 
(select p.ProductName from Products as p where p.ProductID=od.ProductID) as 'Ürün Adı',
COUNT(Quantity) as 'Satılan Ürün Adedi',
(select p.UnitPrice from Products as p where p.ProductID=od.ProductID) as 'Birim Fiyatı',
(select p.UnitsInStock from Products as p where p.ProductID=od.ProductID) as 'Kalan stok miktarı'
from [Order Details] as od group by od.ProductID order by [Satılan Ürün Adedi]


-- SORU-2:
select *from [Order Details]
select *from Orders
select *from Products
select 
od.OrderID,
COUNT(od.ProductID) as 'Ürün Sayısı' 
from [Order Details] as od group by od.OrderID

-- SORU-3:
select *from Customers
select 
(select c.CompanyName from Customers as c where c.CustomerID=o.CustomerID) as 'Firma Adı',
(select c.ContactName from Customers as c where c.CustomerID=o.CustomerID) as 'Firma Yetkilisi Ad-Soyadı',
(select c.City from Customers as c where c.CustomerID=o.CustomerID) as 'Şehir',
(select c.Country from Customers as c where c.CustomerID=o.CustomerID) as 'Ülke'
from Orders as o group by o.CustomerID