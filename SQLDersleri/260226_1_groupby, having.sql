-- ******************************************
-- 26 Şubat 2026 MS-SQL Dersleri
-- ******************************************
-- group by, having
-- group by => Bir tabloda aynı dataları saymak için kullanılan gruplama yapısıdır.

use Northwind

select *from Products
select CategoryID,ProductName,UnitPrice from Products order by CategoryID

select CategoryID,COUNT(ProductID) from Products -- ??

select Country,City,CompanyName,ContactName from Customers order by Country -- 91

select Country,COUNT(CustomerID) as 'Müşteri Sayısı' from Customers group by Country order by [Müşteri Sayısı]

/*

Group By Madddeleri:
1) group by ile yazılan kolonlar select - from arasında kullanılmalıdır (* çalışmaz).
2) group by genelde hazır fonksiyon ile beraber kullanılır.
3) select - from arasında yazılan kolonun group by ile beraber kullanılması zorunludur.

*/

-- En çok müşteriye sahip 3 ülke
select top 3 Country,COUNT(CustomerID) as 'Müşteri Sayısı' from Customers group by Country order by [Müşteri Sayısı] desc

-- En az müşteriye sahip 5 ülke
select top 5 Country,COUNT(CustomerID) as 'Müşteri Sayısı' from Customers group by Country order by [Müşteri Sayısı] asc

-- Her bir ülkeye kaç sipariş gönderildiğini hesaplayınız.
-- ship => gemi
select *from Orders -- 957 data
select ShipCountry,COUNT(OrderID) as 'Sipariş Sayısı' from Orders group by ShipCountry -- 21 data

select *from Orders where ShipCountry='Finland' -- 30 data
select *from Orders where ShipCountry='USA' -- 137 data

select ShipCountry from Orders -- 957 data
select distinct ShipCountry from Orders -- 21 data. distinct grouplamadan aynı dataları tek satırda verir ama sayısı group by ile ancak test edilebilir.

select ShipCountry from Orders group by ShipCountry -- 21 data verir.
-----------------------------------------------------------------------
-- Tarih ile group by kullanımı:
select *from Orders -- 957 data
select YEAR(OrderDate) from Orders -- 957 data
select distinct YEAR(OrderDate) from Orders -- 3 data

-- Her bir yılda kaç sipariş yapıldığını hesaplayınız.
select YEAR(OrderDate),COUNT(OrderID) as 'Yıllık Sipariş Sayısı' from Orders group by YEAR(OrderDate)

-- year => Tarih içinde yılı verir.
-- month => Tarih içinde ayı verir.
-- day => Tarih içinde günü verir.

-- Her ülkeye giden sipariş sayısı
select ShipCountry,COUNT(OrderID) from Orders group by ShipCountry

-- Her bir ülkenin şehirlerine giden sipariş sayısı
select ShipCountry,ShipCity,COUNT(OrderID) as 'Sipariş Sayısı' from Orders group by ShipCountry,Shipcity order by ShipCountry,ShipCity

-- 1998 yılında en çok sipariş verilen 4 ay bilgisini bulunuz.
-- group by where den sonra kullanılır.
-- order by her zaman script lerin en sonunda yazılır.
select top 4 YEAR(OrderDate), MONTH(OrderDate), COUNT(OrderID) as 'Sipariş Sayısı' from Orders 
where YEAR(OrderDate)=1998 
group by YEAR(OrderDate),MONTH(OrderDate)
order by [Sipariş Sayısı] desc
--
select *from Orders
select *from Customers
--

-- Her bir kategoriye kaç ürün olduğunu hesaplayınız.
-- Kategori, Ürün

select *from Categories
select *from Products

select CategoryID,COUNT(ProductID) as 'Ürün Sayısı' from Products
group by CategoryID
-- subquery, join

-- Having => group by için koşul bağlama işlemini yapar.

select ShipCountry,COUNT(OrderID) as Sayı from Orders
--where COUNT(OrderID)=30 -- where tablo kolonları için sorgu yapar.
group by ShipCountry
having COUNT(OrderID)=30
-- tablo kolon sorgu işlemlerinde where nasıl sorgu yapıyorsa group by ile beraber having de o sorgu işlemini yapar. having ile where burada farklı görevleri üstlenir. where olan kolonlarda çalışır, having group by ile hesaplama için kullanılan hazır fonksiyonla beraber oluşturulan yeni hesaplayıcı yapı için sorgu yapar.
