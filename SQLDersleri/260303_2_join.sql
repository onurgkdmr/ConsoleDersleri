-----------------------------------------
-- 03 Mart 2026 SQL Dersleri
-----------------------------------------
use Northwind
-- Join => Birden fazla tabloları bağlamak için join kullanılır.
-- Tabloların birbirine bağlanabilmesi için ortak kolonların eşitlenmesi gereklidir.
-- Subquery performans düşürür ama join tam performans işidir. Join yapısı performansı çok az etkiler.
-- Join'ler yapılırken bağlanılan tabloların bütün kolonları gelir. İhtiyaca göre istenilen kolon yazılır.

select *from Products
select *from Categories

select
p.ProductName, p.UnitPrice, p.UnitsInStock, c.CategoryName
           from Products as p
inner join Categories    as c on p.CategoryID=c.CategoryID

/*

Join Çeşitleri:
- inner join => 2 tablodan ortak data'lar
- right join => 2 tablodan join yapısının sağında kalan tablodan bütün dataları, diğer tablodan da ortak dataları getirir.
- left join => 2 tablodan join yapısının solunda kalan tablodan bütün dataları, diğer tablodan da ortak dataları getirir.
- full outer jon => 2 tablonun bütün kolonlarını getirir.

*/

select
p.ProductName, p.UnitPrice, p.UnitsInStock, c.CategoryName, c.CategoryID, c.Description
           from Products as p
inner join Categories    as c on p.CategoryID=c.CategoryID
where p.CategoryID in(9,17,18) -- data yok.
----------------------------------------------------------------------------------------

-- Inner Join
select
p.ProductName, p.UnitPrice, p.UnitsInStock, c.CategoryName, c.CategoryID, c.Description
           from Products as p
inner join Categories    as c on p.CategoryID=c.CategoryID -- 78 data verir.
where p.ProductID in (78,79) -- data yok.
----------------------------------------------------------------------------------------

-- Left Join
select
p.ProductName, p.UnitPrice, p.UnitsInStock, c.CategoryName, c.CategoryID, c.Description
           from Products as p left join Categories as c on p.CategoryID=c.CategoryID -- 80 data verir.
----------------------------------------------------------------------------------------

-- Right Join
select
p.ProductName, p.UnitPrice, p.UnitsInStock, c.CategoryName, c.CategoryID, c.Description
           from Products as p right join Categories as c on p.CategoryID=c.CategoryID -- 81 data verir.

select *from Categories
----------------------------------------------------------------------------------------

-- Full Outer Join
select
p.ProductName, p.UnitPrice, p.UnitsInStock, c.CategoryName, c.CategoryID, c.Description
           from Products as p full outer join Categories as c on p.CategoryID=c.CategoryID -- 83 data verir.


-- Her bir müşterinin kaç ürün sipariş ettiğini müşteri bilgisi ve ürün sayısı verecek şekilde hesaplayınız.
select *from Customers
select *from Orders
select *from [Order Details]

select
c.CompanyName,c.ContactName,
SUM(od.Quantity) as 'Ürün Sayısı'
from Customers as c
inner join Orders as o on c.CustomerID=o.CustomerID
inner join [Order Details] as od on od.OrderID=o.OrderID
group by c.CompanyName,c.ContactName
---------------------------------------------------------------------------------------

-- Her bir müşterinin kaç siparişi olduğunu müşteri bilgisi, sipariş sayısı verecek şekilde kodlayınız.
select
c.CompanyName, c.ContactName, c.Country,
COUNT(o.OrderID) as 'Sipariş Sayısı'
from Customers as c
inner join Orders as o on c.CustomerID=o.CustomerID
group by c.CompanyName, c.ContactName, c.Country
order by [Sipariş Sayısı]
---------------------------------------------------------------------------------------

-- Her bir personelin kaç ürün satışında görev aldığını hesaplayınız.
select
e.FirstName, e.LastName,
SUM(od.Quantity) as 'Ürün Sayısı'
from Employees as e
inner join Orders as o on e.EmployeeID=o.EmployeeID
inner join [Order Details] as od on od.OrderID=o.OrderID
group by e.FirstName, e.LastName
---------------------------------------------------------------------------------------

-- Her kategoride kaç ürün satıldığını CategoryName, satılan ürün sayısı şeklinde hesaplayınız.
select
c.CategoryName,
SUM(od.Quantity) as 'Satılan Ürün Sayısı'
from Categories as c
inner join Products as p on p.CategoryID=c.CategoryID
inner join [Order Details] as od on od.ProductID=p.ProductID
group by c.CategoryName
----------------------------------------------------------------------------------------
-- En çok satılan ürünün bilgisini ve hangi müşterilerin sipariş ettiğini hesaplayınız?
select *from Products
select *from Customers
select *from Orders



----------------------------------------------------------------------------------------
--1998 yılının Ocak ayında ilk siparişi veren 3 müşterinin verdiği ürünleri , müşteri bilgilerini listeleyiniz

-- 56,76,52,13,25,70
select
p.ProductID,p.ProductName,c.CompanyName,c.ContactName
from [Order Details] as od
inner join Products as p on p.ProductID=od.ProductID
inner join Orders as o on o.OrderID=od.OrderID
inner join Customers as c on c.CustomerID=o.CustomerID
where od.OrderID in (select top 3 OrderID from Orders as o where YEAR(o.OrderDate)=1998 and MONTH(OrderDate)=1 order by OrderDate) 








-- ONUR