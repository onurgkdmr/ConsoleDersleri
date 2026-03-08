-----------------------------------------
-- 03 Mart 2026 SQL Dersleri
-----------------------------------------
use Northwind
-- JOIN => Birden fazla tabloyu birbirine bağlamak için join kullanılır.
-- Tabloların birbirine bağlanabilmesi için ortak kolonların eşitlenmesi gereklidir.
-- Subquery performans düşürür ama join tam performans işidir ve yapısı itibariyle performansı çok az etkiler.
-- join yapılırken bağlanılan tabloların bütün kolonları gelir ve ihtiyaca göre istenilen kolon yazılır. 

select *from Products
select *from Categories

select
p.ProductName, p.UnitPrice, p.UnitsInStock, c.CategoryName
from Products as p
inner join Categories as c on c.CategoryID=p.CategoryID

/*

Join Çeşitleri:
- inner join => 2 tablonun ortak dataları gelir.
- right join => Join yapısının sağında kalan tablodan bütün datalar gelir. Diğer tablodan ise ortak datalar gelir.
- left join => Join yapısının solunda kalan tablodan bütün datalar gelir. Diğer tablodan ise ortak datalar gelir.
- full outer join => 2 tablonun bütün dataları gelir.

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
c.CompanyName, c.ContactName,
SUM(od.Quantity) as 'Ürün Sayısı'
from Customers as c
inner join Orders as o on o.CustomerID=c.CustomerID
inner join [Order Details] as od on od.OrderID=o.OrderID
-- where koşullarının yazıldığı yer
group by c.CompanyName,c.ContactName



-- Her bir müşterinin kaç siparişi olduğunu müşteri bilgisi, sipariş sayısı verecek şekilde kodlayınız.
select *from Customers
select *from Orders

select
c.CompanyName, c.ContactName,
COUNT(o.OrderID) as 'Sipariş Sayısı'
from Customers as c
inner join Orders as o on o.CustomerID=c.CustomerID
group by c.CompanyName, c.ContactName
order by [Sipariş Sayısı]


-- Her bir personelin kaç ürün satışında görev aldığını hesaplayınız.
select *from Employees
select *from Orders
select *from [Order Details]

select 
e.FirstName, e.LastName,
SUM(od.Quantity) as 'Satılan Ürün Adeti'
from Employees as e
inner join Orders as o on o.EmployeeID=e.EmployeeID
inner join [Order Details] as od on od.OrderID=o.OrderID
group by e.FirstName, e.LastName

-- Her kategoride kaç ürün satıldığını CategoryName, satılan ürün sayısı şeklinde hesaplayınız.
select *from Categories
select *from [Order Details]
select *from Products

select 
c.CategoryID, c.CategoryName,
SUM(od.Quantity) as 'Satılan Ürün Adeti'
from Categories as c
inner join Products as p on p.CategoryID=c.CategoryID
inner join [Order Details] as od on od.ProductID=p.ProductID
group by c.CategoryID, c.CategoryName


-- En çok satılan ürünün bilgisini ve hangi müşterilerin sipariş ettiğini hesaplayınız?


--1998 yılının Ocak ayında ilk siparişi veren 3 müşterinin verdiği ürünleri , müşteri bilgilerini listeleyiniz
select
p.ProductID,p.ProductName,c.CompanyName,c.ContactName
from [Order Details] as od
inner join Products as p on p.ProductID=od.ProductID
inner join Orders as o on o.OrderID=od.OrderID
inner join Customers as c on c.CustomerID=o.CustomerID
where od.OrderID in (select top 3 OrderID from Orders as o where YEAR(o.OrderDate)=1998 and MONTH(OrderDate)=1 order by OrderDate) 
