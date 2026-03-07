-- *************************************************************
-- 27 ŞUBAT 2026 SQL Dersleri
-- *************************************************************
-- Subquery => İç içe select ya da sorgulayıcı yapıda sql scriptleri kullanmak.

use Northwind

-- subquery => Alt sorgu

select *from Products
select *from Categories
select *from [Order Details]

select 
CategoryID,
(select CategoryName from Categories where Categories.CategoryID=Products.CategoryID) as 'Kategori Adı',
ProductID, ProductName, UnitPrice, UnitsInStock
from Products

/*

1) subquery ile tanımlanan script ile sadece 1 kolon çağrılabilir.
2) subquery ile ana sorgunun ortak kolonları where ile eşitlenmelidir ve bu eşitleme subquery (iç select) ile yapılmalıdır.
3) 2. maddenin eki olarak subquery (iç select) ile tanımlanan kolon PK (Primary Key) kolon olmalıdır. 

*/

-- Birden fazla tabloyu subquery ile birbirine bağlamak:

select *from Products
select *from Categories
select *from Suppliers

select 
(select CompanyName from Suppliers as s where s.SupplierID=p.SupplierID) as 'Tedarikçi Firma',
(select ContactName from Suppliers as s where s.SupplierID=p.SupplierID) as 'Tedarikçi Firma Yetkilisi',
(select CategoryName from Categories as c where c.CategoryID=p.CategoryID) as 'Kategori Adı',
p.ProductName, p.UnitPrice, p.UnitsInStock
from Products as p

-- Her bir siparişin hangi personel tarafından yapıldığını sipariş tarihi, kargo maliyeti, personel adı şeklinde gösteren scripti kodlayınız.

select *from Orders
select *from Employees

select
o.OrderDate as 'Sipariş Tarihi', o.Freight as 'Kargo Maliyeti', 
(select e.FirstName + SPACE(1) + e.LastName from Employees as e where e.EmployeeID=o.EmployeeID) as 'Personel Adı-Soyadı'
-- iç select içinde birden fazla kolonu tek bir kolon gibi göstermek operatörler kullanmak (space) şartıyla mümkündür.
from Orders as o
-- iç select ile geçmiş konulardaki group by, order by, where, like, ... bütün işlemleri yapabilirsiniz.


-- Her bir personelin kaç sipariş verdiğini hesaplayalım.
select
(select e.FirstName + SPACE(1) + e.LastName from Employees as e where e.EmployeeID=o.EmployeeID) as 'Personel Adı-Soyadı',
COUNT(OrderID) as 'Sipariş Sayısı'
from Orders as o -- Orders tablosu ana select'tir. İç select'te Empployes tablosu vardır.
-- where ile bu alana kolon koşulları yazılabilir (koşul varsa).
group by o.EmployeeID having COUNT(OrderID)>100
order by [Sipariş Sayısı]

-- group by kullanırken select ile from arasında yazılan kolon, group by ile beraber de yazılmalıdır (ZORUNLULUK).


-- Her bir müşterinin (Customer) kaç siparişi olduğunu Firma Adı, Firma Yetkilisi Adı-Soyadı, Şehir, Ülke şeklinde hesaplayınız.
select *from Customers
select *from Orders
-- PK olan kolona sahip tablo iç select olmak ZORUNDADIR.
-- CustomerID Customers tablosu için PK'dir. Dolayısıyla Customers tablosu iç select olmalıdır.

select 
(select c.CompanyName from Customers as c where c.CustomerID=o.CustomerID) as 'Firma Adı',
(select c.ContactName from Customers as c where c.CustomerID=o.CustomerID) as 'Firma Yetkilisi Adı-Soyadı',
(select c.Phone from Customers as c where c.CustomerID=o.CustomerID) as 'Telefon',
(select c.Country from Customers as c where c.CustomerID=o.CustomerID) as 'Şehir',
(select c.City from Customers as c where c.CustomerID=o.CustomerID) as 'Ülke',
COUNT(o.OrderID) as 'Sipariş Sayısı',
'' as AÇIKLAMA
from Orders as o
group by o.CustomerID
order by [Sipariş Sayısı]