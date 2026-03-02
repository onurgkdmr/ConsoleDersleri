-- ********************************************
-- 26 Şubat 2026 MS-SQL Dersleri
-- ********************************************
-- Group by, Having

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
select ShipCountry, COUNT(OrderID) as 'Sipariş Sayısı' from Orders group by ShipCountry

select distinct ShipCountry from Orders -- distinct grouplama yapmadan aynı dataları tek satırda verir (group by gibi çalışır). Ancak sayısı group by ile tespit edilebilir.
----------------------------------------------------------------
-- Tarih ile group by kullanımı:
select *from Orders	
select YEAR(OrderDate) from Orders -- 957 data verir.
select distinct YEAR(OrderDate) from Orders -- 3 data verir.

-- Her bir yılda kaç tane sipariş yapıldığını hesaplayınız.
select YEAR(OrderDate), COUNT(OrderID) as 'Sipariş Sayısı' from Orders group by YEAR(OrderDate) 

-- year => Tarih içinde yılı verir.
-- month => Tarih içinde ayı verir.
-- day => Tarih içinde günü verir.

-- Her ülkeye giden sipariş sayısını listeleyiniz.
select ShipCountry, COUNT(OrderID) as 'Sipariş Sayısı' from Orders group by ShipCountry

-- Her bir ülkenin şehirlerine giden sipariş sayısını listeleyiniz.
select ShipCountry,ShipCity, COUNT(OrderID) as 'Sipariş Sayıısı' from Orders group by ShipCountry,ShipCity order by ShipCountry,ShipCity

-- 1998 yılında en çok sipariş verilen 4 ay bilgisini bulunuz.
-- group by where'den sonra kullanılır.
-- order by her zaman script'lerin en sonunda yazılır.
select top 4 YEAR(OrderDate), MONTH(OrderDate), COUNT(OrderID) as 'Sipariş Sayısı' from Orders where YEAR(OrderDate)='1998' group by YEAR(OrderDate),MONTH(OrderDate) order by [Sipariş Sayısı] desc

-- Her bir kategoride kaç ürün olduğunu hesaplayınız.
select CategoryID, COUNT(ProductID) as 'Ürün Sayısı' from Products group by CategoryID -- Bu şekilde olmaz, sadece ID'leri verir ama ürünleri vermez. Bu sorunun çözümü için subquery veya join yapılması gerekir.

-- Having => Group by için koşul bağlama işlemini yapar.

select ShipCountry, COUNT(OrderID) as Sayı from Orders
--where COUNT(OrderID)=30 --where, tablo kolonları için sorgu yapar.
group by ShipCountry
having COUNT(OrderID)=30

-- Tablo kolonları için sorgu işlemlerinde where nasıl sorgu yapıyorsa group by ile beraber iken having de o şekilde sorgu işlemi yapar. Having ile where burada farklı görevleri üstlenir. Where olan sorgu kolonlarda çalışır, having ise group by ile hesaplama için kullanılan hazır fonksiyonlar ile beraber oluşturulan yeni hesaplayıcı yapı için sorgu işlemini yapar. 