-- ********************************************
-- Hazır Fonksiyonlar, Group By, Having
-- ********************************************
use Northwind

-- Hazır Fonksiyonlar:
-- Max, min, COUNT (sayma işlemi yapar ama null değilse), SUM (toplama işlemi yapar), AVARAGE (AVG - ortalama alır).

select *from Products order by UnitPrice
select top 1 *from Products order by UnitPrice -- asc otomatik olarak alınır. Fiyatı en düşük olan ürünü getirir.
select top 1 *from Products order by UnitPrice desc -- Fiyatı en yüksek olan ürünü getirir.

-- Hazır fonksiyonla yapmak istersek:
select MIN(UnitPrice) as 'Min Fiyat' from Products
select MAX(UnitPrice) as 'Max Fiyat' from Products
select SUM(UnitPrice) as 'Fiyatların Toplamı' from Products

select COUNT(UnitPrice) as 'Sayı' from Products -- Count sadece dolu olan kolonları sayar. Null gelirse sayma işlemini yapmaz. Bu nedenle kullanımına dikkat edilmelidir.
-- COUNT(*) şeklinde kullanım bütün kolonları saydırmak demektir. Bu garanti bir yoldur ve sayma işlemini yapar. Ancak performans açısından iyi bir seçim değildir.

select *from Products
select COUNT(ProductID) from Products -- 80 data verir. Çünkü null yok.
select COUNT(CategoryID) from Products -- 78 data verir. Çünkü CategoryID için 2 data null içermektedir. COUNT bu 2 null değeri göremez ve 2 adet eksik sayma işlemi yapar.

select COUNT(*) from Products -- Garanti bir yoldur ama bütün kolonları sayma işlemi yaptırdığı için performansı düşürür.

select top 1 *from Products order by UnitPrice
select MIN(UnitPrice) as 'Min Fiyat' from Products
select ProductName, MIN(UnitPrice) as 'Min Fiyat' from Products
-- Yukarıdaki script hata verir. Hazır fonksiyonlar genellikle group by ile birlikte kullanılır.