--*********************************************
-- Hazır fonksiyonlar, Group by, having
--*********************************************
use Northwind

-- Hazır Fonksiyonlar:
-- Max, min, count (sayma işlemi yapar ama null değil ise), sum (toplama işlemi yapar), avarage (AVG - ortalama alır),

select *from Products order by UnitPrice
select top 1 *from Products order by UnitPrice -- asc otomatik olarak vardır. Fiyatı en düşük olanı getirir.
select top 1 *from Products order by UnitPrice desc -- Fiyatı en yüksek olanı getirir.

select MIN(UnitPrice) as 'Min Fiyat' from Products
select MAX(UnitPrice) as 'Max Fiyat' from Products
select count(UnitPrice) as 'Sayı' from Products -- Count sadece dolu olan kolonları sayar, null gelirse saymaz. Bu nedenle kullanımına dikkat edilmelidir.

-- count(*) yıldız ile kullanımı bütün kolonlarına göre say demektir. Bu garanti bir yoldur, sayma işlemi olur ama performans konusunda iyi bir seçim değildir (yıldızla yazmak).

select *from Products
select COUNT(ProductID) from Products -- 80
select COUNT(CategoryID) from Products -- 78 sonuç geldi. Çünkü CategoryID için 2 data null içerir, count bu 2 null değeri görmez ve 2 eksik sayar.
select COUNT(*) from Products -- Garantidir ama bütün kolonları sayma işlemine dahil ettiği için performans düşürür.

--********************************************

select top 1 *from Products order by UnitPrice
select MIN(UnitPrice) as 'Min Fiyat' from Products

select ProductName,MIN(UnitPrice) as 'Min Fiyat' from Products
-- Yukarıdaki script hata verir. Hazır fonksiyonlar genelde group by ile beraber kullanılır.
