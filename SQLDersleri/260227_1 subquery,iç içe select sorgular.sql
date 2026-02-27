-- ********************************************************
-- 27 Şubat 2026 SQL Dersleri
-- ********************************************************
-- Subquery
-- İç içe ya da sorgulayıcı yapıda sql scriptleri kullanmak

use Northwind
-- subquery => alt sorgu

select *from Products
select *from Categories
select *from [Order Details]


select
CategoryID,
(select CategoryName from Categories where Categories.CategoryID=Products.CategoryID) as 'Kategori Adı',
ProductID,ProductName,UnitPrice,UnitsInStock
from Products

/*

1) subquery ile tanımlanan script sayesinde sadece bir kolon çağrılabilir.
2) subquery ile ana sorgu where ile ortak kolonlar eşitlenmeli ve bu eşitleme subquery (iç select) ile yapılmalı.
3) 2. maddenin devamı olarak iç select ile tanımlanan tablo PK (Primary Key) kolon olmalıdır.

*/

-- Birden fazla tabloyu subquery olarak kullanmak

select *from Products
select *from Categories
select *from Suppliers

select
(select s.CompanyName from Suppliers as s where s.SupplierID=p.SupplierID) as 'Tedarikçi Firma',
(select s.ContactName from Suppliers as s where s.SupplierID=p.SupplierID) as 'Tedarikçi Firma Yetkilisi',
(select c.CategoryName from Categories as c where c.CategoryID=p.CategoryID) as 'Kategori Adı',
p.ProductName,p.UnitPrice,p.UnitsInStock
from Products as p

-- Her bir siparişin hangi personel tarafından yapıldığını sipariş tarihi, kargo maliyeti, personel adını getiren scripti kodlayınız.
select *from Orders
select *from Employees

select
OrderDate as 'Sipariş Tarihi', Freight as 'Kargo',
(select e.Firstname+ SPACE(1) +e.LastName from Employees as e where e.EmployeeID=o.EmployeeID) as 'Personel Adı-Soyadı'
from Orders as o
-- İç select ile operatörler kullanarak birden fazla kolonu tek kolon gibi göstermek şartıyla kullanabilirsiniz.

-- İç select ile geçmiş konulardaki group by, order by, where, like ... bütün işlemleri yapabilirsiniz.

-- ÖRNEK:
-- Her bir personelin kaç sipariş verdiğini hesaplayalım.
select
(select e.Firstname+ SPACE(1) +e.LastName from Employees as e where e.EmployeeID=o.EmployeeID) as 'Personel Adı-Soyadı',
COUNT(OrderID) as 'Sipariş Sayısı'
from Orders as o -- Order tablosu ana select ama iç select'te Employees tablosu var.
-- where -- where ile de bu alanda varsa kolon koşulları yazabilirsiniz.
group by o.EmployeeID having COUNT(OrderID)>100
order by [Sipariş Sayısı]
-- group by kullanırken select ile from arasında yazılan kolon, script group by ile beraber yazılmalıdır (ZORUNLULUK).

-- Her bir müşterinin (Customer) kaç siparişi olduğunu Firma adı, Firma yetkilisi adı soyadı, Şehir ve Ülke, Telefon numarası şeklinde hesaplayınız.
select *from Customers
select *from Orders
-- PK olan kolona sahip TABLO iç select OLMAK ZORUNDADIR.
-- CustomerID, Customers tablosu için PK'dir. Bu nedenle Customers tablosu iç select olmalıdır.

select
(select c.CompanyName from Customers as c where c.CustomerID=o.CustomerID) as 'Firma Adı',
(select c.ContactName from Customers as c where c.CustomerID=o.CustomerID) as 'Firma Yetkilisi Adı Soyadı',
(select c.Phone from Customers as c where c.CustomerID=o.CustomerID) as 'Telefon',
(select c.City from Customers as c where c.CustomerID=o.CustomerID) as 'Şehir',
(select c.Country from Customers as c where c.CustomerID=o.CustomerID) as 'Ülke',
COUNT(OrderID) as 'Sipariş Sayısı',
'' as AÇIKLAMA
from Orders as o
group by o.CustomerID 
order by [Sipariş Sayısı]

-- ÖDEV

-- 1) Her bir üründen kaç tane satıldığını ürün adı, birim fiyatı, kalan stok şeklinde gösteriniz.
-- 2) Her bir siparişte kaç ürün olduğunu getiren scripti kodlayınız.
-- 3) Her bir müşterinin aldığı ürün sayısı Firma adı, Firma yetkili ad-soyad, şehir ve ülke şeklinde hesaplayınız.

