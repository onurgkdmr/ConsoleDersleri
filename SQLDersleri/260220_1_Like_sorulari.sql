--DERS
---20 Şubat Cuma 2026 
--like sorular
use Northwind
select *from Customers
--başta %,sonda %,_ işareti ile karakter sayımı
--Ülkesi içinde swe olan ve şehri için br geçen müşterileri listeleyiniz.
select *from Customers where Country like '%swe%' and City like '%br%'
select *from Products
--Ürün adı içinde 3.harfi i ve 4. harfi c olan ve stok değerleri 0(dahil)-10(dahil) arasında olan Name, Stok, Price kolonlarını TR yaparak  ürünleri listeleyiniz
select 
ProductName 'Ürün Adı',
UnitsInStock Stok,
UnitPrice Fiyat
from Products where ProductName like '__ic%' and UnitsInStock>=0 and UnitsInStock<=10

-- aralık için between kullanalım.
select
ProductName 'Ürün Adı',
UnitsInStock Stok,
UnitPrice Fiyat
from Products where ProductName like '__ic%' and UnitsInStock between 0 and 10
------------------------------------------------------
-- Genel Tekrar Soruları
-- Aliases, kolon adı, select, from, Tablo adı, where (koşul kelimesi), Operatörler (<,>,<=,!=,<> (Eşit değildir),=,between,and,or,in,not in, is null, is not null, order by (sıralama), like (% yeri, _ konumu))

-- Ürün fiyatları 15-25 arasında olan ürünleri fiyatına göre küçükten büyüğe doğru, Ad,Stok,Fiyat,Birim Tanımı (QuantityPerUnit) şeklinde listeleyiniz.
select 
ProductName as Ad,
UnitsInStock as 'Stok',
UnitPrice 'Birim Fiyat',
QuantityPerUnit [Birim Tanımı]
--from Products where UnitPrice >=15 and UnitPrice <=25 order by UnitPrice --asc default atar
--operatör yerine between kullanalım:
from Products where UnitPrice between 15 and 25 order by UnitPrice
-----------------------
--ürün stokları 100 üzerinde olan ürünleri, ürün isimlerine göre a-z'ye sıralayınız.
--Ad, Birim Fiyat, Stok, Birim Tanımı, Üretimdemi(Discontinued)

select 
ProductName Ad,
UnitPrice 'Birim Fiyat',
UnitsInStock as Stok,
QuantityPerUnit as [Birim Tanımı],
Discontinued Üretimdemi
from Products where UnitsInStock>100 order by ProductName
------------------------------------------------------------
-- Top kullanımı
select *from Products order by UnitPrice --ürünleri fiyata göre küçükten büyüğe doğru sıralar.
select *from Products order by UnitsInStock

select *from Orders order by Freight
-- Orders => siparişler, freight => kargo bedeli

select *from Customers order by CompanyName -- a-z
select *from Products --ürünleri listeler.
order by UnitPrice --fiyatı küçükten büyüğe doğru

-- En düşük fiyata sahip olan ilk 5 ürün:
select top 5 *from Products -- ürünleri listeler
order by UnitPrice --fiyatı küçükten büyüğe doğru

-- En yüksek fiyata sahip ilk 5 ürün:
select top 5 *from Products -- ürünleri listeler
order by UnitPrice desc --fiyatı büyükten küçüğe doğru

-- En genç 3 personelin adı, soyadı, doğum tarihi, adres, şehir ve ülkesini gösteriniz.
select 
top 3
FirstName Adı,
LastName Soyadı,
BirthDate 'Doğum Tarihi',
Address as Adres,
City Şehir,
Country Ülke
from Employees order by BirthDate desc

