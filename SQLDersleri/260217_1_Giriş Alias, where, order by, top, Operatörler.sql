-- Yorum satırı (tek satırlık) => //
/*
Çoklu satır
Yorum
Satırı
*/

use Northwind -- DB (Database) çağırmak için use kullanılır.
select *from Products -- Northwind DB altında Products tablosundaki data (veri) 'ları listeler.
-- select => seçmek
-- * => bütün kolonları getirir. Hepsi anlamına gelir.
-- from => -den, -dan ekidir. Tablo (tablo adı)'dan vs. gibi
-- Products => tablonun adı (ürünler tablosu)
--------------------------------------------------------------------------------------------------------------------------------------
-- Bir tabloda istenilen kadar data çekmek için;
select ProductID, ProductName, UnitPrice, UnitsInStock from Products

-- Aliases => İsimlendirme

/*
Product => Ürün
Customer => Müşteri
Employee => Personel, çalışan
Order => Sipariş
Detail => Detay
Category => Kategori
Supplier => Tedarikçiler
Shippier => Yüklenici
Region => Bölge

*/

-- CTRL + R => Sonuç penceresini gösterir/gizler.
-- Execute / F5 => Seçimi çalıştırır. Eğer seçim yapmadan Execute / F5 yaparsanız bütün sayfadaki kodlar çalıştırılır.

select *from Customers

-- SQL'de küçük/büyük harf duyarlılığı yoktur.
select
CustomerId as Kod,
CompanyNaME as 'Firma Adı',
ContactName as 'İletişimdeki Kişi',
Address as [Adres],
City as 'Şehir', Country as Ülke
from Customers

-- Personel (Employee) tablosunun Ad, Soyad, Doğum Tarihi, Şehir, Ülke kolonlarını getirip kolonları TR ile gösteriniz.
select FirstName as Adı, LastName as Soyadı, BirthDate [Doğum Tarihi], City Şehir, Country 'Ülke' from Employees

/*
select
FirstName as Ad,
LastName as Soyad,
BirthDate as 'Doğum Tarihi',
City as Şehir,
Country as Ülke
from Employees
*/

-- Siparişler (Orders) tablosunda Sipariş Tarihi (OrderDate), Kargo Maliyeti (Freight), Nakliye Şehri, Ülkesi (ShipCity, ShipCountry) şeklinde listeleyiniz.
select OrderDate as [Sipariş Tarihi], Freight 'Kargo Maliyeti', ShipCity 'Nakliye Şehri', ShipCountry 'Nakliye Ülkesi' from Orders

/*
select
OrderDate as 'Sipariş Tarihi',
Freight as [Kargo Maliyeti],
ShipCity as 'Nakliye Şehri',
ShipCountry as [Nakliye Ülkesi]
from Orders
*/

----------------------------------------------------------------------------------------------------------------------------------------
 --MS-SQL=> Microsoft - Structured(Mimari, yapı) Query(Sorgu) Language (Dil)
 --SQL bir programlama dili değildir, sorgu dilidir.
 
 --T-SQL=> Transact SQL için;
 --where, order by, top, operatörler, hazır fonksiyonlar, group by, having, koşul, döngü, değişken tanımı(declare),fonksiyon, view, stored procedure,trigger,create,alter,drop,insert, update, delete, .. işlemleri yapar 
 
 --where
 select *from Products where unitprice=10
 select ProductName,UnitPrice,UnitsInStock,QuantityPerUnit from Products where unitprice=10
 
 /*
 Operatörler
 <,>,<=,>=,!=,=,+,-,*,/,%=> c# ta olduğu gibi kullanılır
 and,or=> and (&&)ve or(||) c# taki yapılar ile aynı şekilde kullanılır 
 is nul,is not null=>??
 in, between =>??
 */

 select *from Orders where ShipCountry<>'Brasil' -- <> (Eşit değildir)
 select *from Orders where ShipCountry!='Brasil' -- != (Eşit değildir)
 
 select *from Products where UnitPrice<>10 and UnitsInStock>100 -- Fiyatı 10 olmayan ve stoğu 100'den büyük olan dataları listeler.
 -- Sayı sorguları direkt yazılır ama metin için tek tırnak ('Brasil') gereklidir.

 -- Sıralama için order by kullanılır.
 -- Order => sipariş, sıralama
 select *from Customers order by City -- a'dan z'ye veya küçükten büyüğe doğru sıralar. Kolon adından sonra bir şey yazılmazsa otomatik olarak asc (ascending) kabul eder.
 select *from Customers order by City asc
 select *from Customers order by City desc -- descanding => z'den a'ya veya büyükten küçüğe doğru sıralar. 

 -- Order by her zaman bütün scriptin (SQL kod parçacığı) sonunda yazılır.
 -- Order by ile beraber genellikle top kullanılır.

 select top 15 *from Customers order by City asc -- Şehirlere göre a'dan z'ye sıralayarak ilk 15 datayı listeler.
 -- Aynısını aşağıdaki gibi kolon ismi vererek yaparsak;

 select
 top 15 CustomerID as Kod,
 CompanyName       as [Firma Adı],
 ContactName       as 'Yetkili Kişi',
 City              as Şehir,
 Country           as Ülke 
 from Customers order by City