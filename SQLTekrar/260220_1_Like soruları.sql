-- 20 Şubat Cuma 2026
-- like sorular
use Northwind

-- başta %, sonda %, _ işareti ile karakter sayımı => Like için

-- SORU-1:
-- Ülke adının içinde "swe" olan ve şehir adı içinde "br" geçen müşterileri listeleyiniz.
select *from Customers where Country like '%swe%' and City like '%br%'

-- SORU-2:
-- Ürün adı içinde 3. harfi i ve 4. harfi c olan ve stok değerleri 0-10 (0 ve 10 dahil) arasında olanları Name,Stok,Price kolonlarıyla birlikte TR yaparak listeleyiniz.
select ProductName as 'Ürün Adı', UnitsInStock as Stok, UnitPrice as [Ürün Fiyatı] from Products where ProductName like '__ic%' and UnitsInStock>=0 and UnitsInStock<10
-- Bu soruyu between ile yapmak istersek:
select ProductName as 'Ürün Adı', UnitsInStock as Stok, UnitPrice as [Ürün Fiyatı] from Products where ProductName like '__ic%' and UnitsInStock between 0 and 10

-- Genel Tekrar Soruları:

-- Aliases, Kolon adları, Select, From, Tablo Adı, Where (Koşul kelimesi), Operatörler (<,>,<=,>=,!=,=,<> (eşit değildir), Between, And, Or, In, Not in, Is null, Is not null, Order by (Sıralama), Like (% yeri, _ konumu))

-- SORU-3:
-- Ürün fiyatları 15-25 arasında olan ürünleri fiyatına göre küçükten büyüğe doğru Ad,Stok,Fiyat,Birim Tanımı (QuantityPerUnit) şeklinde listeleyiniz.
select ProductName as 'Ad', UnitsInStock as 'Stok', UnitPrice as [Birim Fiyat], QuantityPerUnit as [Birim Tanımı] from Products where UnitPrice between 15 and 25 order by UnitPrice -- asc default atar (küçükten büyüğe şeklinde).

-- SORU-4:
-- Ürün stokları 100'ün üzerinde olan ürünleri ürün isimlerine göre a'dan z'ye sıralayınız.
-- Kolonlar: Ad, Birim Fiyat, Stok, Birim Tanımı, Üretim Devamlılığı (Discontinued)
select ProductName as 'Ad', UnitPrice as 'Birim Fiyat', UnitsInStock as 'Stok', QuantityPerUnit as 'Birim Tanımı', Discontinued as 'Üretim Devamlılığı' from Products where UnitsInStock>100 order by ProductName

-- Top kullanımı:
select *from Products order by UnitPrice -- Ürünleri ürün fiyatına göre küçükten büyüğe doğru sıralar.
select *from Products order by UnitsInStock -- Ürünleri ürün stoklarına göre küçükten büyüğe doğru sıralar.
select *from Orders order by Freight -- Siparişleri kargo bedeline göre küçükten büyüğe doğru sıralar.
select *from Customers order by CompanyName -- Müşterileri firma adlarına göre küçükten büyüğe doğru sıralar (a dan z'ye olacak şekilde).
select *from Products -- Ürünleri listeler.
order by UnitPrice -- Ürün fiyatlarını küçükten büyüğe

-- En düşük fiyata sahip olan ilk 5 ürün:
select top 5 *from Products order by UnitPrice

-- En yüksek fiyata sahip olan ilk 5 ürün:
select top 5 *from Products order by UnitPrice desc -- desc ile fiyatlar büyükten küçüğe doğru sıralanır.

-- SORU-5:
-- En genç 3 personelin Adı, Soyadı, Doğum Tarihi, Adresi, Şehir ve Ülkesini listeleyiniz.
select top 3 FirstName as 'Adı', LastName as 'Soyadı', BirthDate as [Doğum Tarihi], Address as Adres, City as Şehir, Country as Ülke from Employees order by BirthDate desc
