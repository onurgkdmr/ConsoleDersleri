-- **************************************************
-- SQL Dersleri 17 Mart 2026
-- **************************************************
use HastahaneDB
-- VIEW

-- View maddeler:
--1) View sanal tablolardır. Sanal tablo tablo gibi çalışır, tablo gibi datayı anlık olarak tutmayabilir
--2) View hantaldır. Proje içerisinde performans açısından hantal olduğu için kullanımı pek tercih edilmez
--3) View script saklamak için kullanılır. Database ile beraber taşınır. Bir script için bu saklama açısından çok iyi bir yöntemdir.
--4) Parametre almaz (C# methodlar alırdı değer döndüren/döndürmeyen), değer döndürmez (void method).
--5) Kesinlikle CRUD işlemleri yapılamaz.


-- SORU:
-- Her kliniğe hangi doktor baktığını klinik , doktor bilgisi veren script
-- View yazmadan önce view için gerekli olan script yazılır. Devamında bu script view içine taşınır.


-- View için script:
select distinct
k.Adi,d.Adi,d.Soyadi
from Klinikler as k
inner join Doktorlar as d on d.Id=k.DoktorId


-- Her yeni nesne (tablo, view, stored procedure, function, trigger) create yaparken 2 go arasında yazılır.
-- View oluşturmak için CREATE kullanılır.
go
create view vw_Doktor_Klinik -- view oluşturmak için yapılan ilk isim yapısı
as -- view kod gövdesinin başladığını gösterir.
-- script başlangıcı
select distinct
k.Adi as Klinik, d.Adi as Doktor, d.Soyadi
from Klinikler as k
inner join Doktorlar as d on d.Id=k.DoktorId
-- script bitişi
go


-- View kullanmak
select *from vw_Doktor_Klinik


-- Olan bir view'in kolonlarını ya da yeni nesneler eklemek için ALTER kullanılır.
go
alter view vw_Doktor_Klinik
as
select distinct
k.Adi as Klinik, d.Adi as 'Doktor Adı', d.Soyadi as 'Doktor Soyadı'
from Klinikler as k
inner join Doktorlar as d on d.Id=k.DoktorId
-- order by 1 desc => View içinde Order By kullanılmaz.
go

-- Tablo ile yapılan her şeyi view ile yapabilirsiniz!

select *from vw_Doktor_Klinik
select Klinik, [Doktor Adı] from vw_Doktor_Klinik
where [Doktor Adı] like '%a%'


-- Her bir doktorun kaç randevusu olduğunu doktor bilgisi, randevu sayısı şeklinde hesaplayan vw_Doktor_Randevu_Sayisi adında view yaparak kodlayınız.

select 
d.Adi,d.Soyadi,
COUNT(r.Id) as 'Randevu Sayısı'
from Doktorlar as d
inner join Randevular as r on r.DoktorId=d.Id
group by d.Adi,d.Soyadi
-- view oluşturalım.

-------------------------------------------------

go
create view vw_Doktor_Randevu_Sayisi
as
select 
d.Adi,d.Soyadi,
COUNT(r.Id) as 'Randevu Sayısı'
from Doktorlar as d
inner join Randevular as r on r.DoktorId=d.Id
group by d.Adi,d.Soyadi
go

select *from vw_Doktor_Randevu_Sayisi -- view çağrılması
-- view güncellemesi
-------------------------------------------------

go
alter view vw_Doktor_Randevu_Sayisi
as
select 
d.Adi as 'Doktor Adı',
d.Soyadi as 'Doktor Soyadı',
COUNT(r.Id) as 'Randevu Sayısı'
from Doktorlar as d
inner join Randevular as r on r.DoktorId=d.Id
group by d.Adi,d.Soyadi
go

select *from vw_Doktor_Randevu_Sayisi

-- Create / Alter / Drop

-- Drop ile view silinir.
drop view [dbo].[vw_Doktor_Klinik]

---------------------------------------------------------------------------------------------------------

-- 3'ten fazla randevusu olan doktorların hangi hastalara randevusu olduğunu hesaplayınız.
-- subquery kullanılmayacak.

select
DoktorId, COUNT(Id) as 'Randevu Sayısı'
from Randevular
group by DoktorId
having COUNT(Id)>3 -- Randevu sayısı 3'ten fazla olan doktorların Id değerini bulduk ve bir view'e taşıyalım, subquery kullanmadığımız için.


go
create view vw_Doktor_Randevu_SubQuery
as
select
DoktorId, 
COUNT(Id) as 'Randevu Sayısı'
from Randevular
group by DoktorId
having COUNT(Id)>3
go

-- view ile bize lazım olacak hasta, randevu bilgilerini getirmek için diğer tablolar join ile birleştirilir.

select
d.Adi as 'Doktor Adı',d.Soyadi as 'Doktor Soyadı',h.Adi as 'Hasta Adı',h.Soyadi as 'Hasta Soyadı',r.tarih as 'Randevu Tarihi',r.Saat as 'Randevu Saati'
from vw_Doktor_Randevu_SubQuery as vw
inner join Doktorlar as d on d.Id=vw.DoktorId
inner join Randevular as r on r.DoktorId=d.Id
inner join Hastalar as h on h.Id=r.HastaId

-- ÖDEVLER:

--ÖDEVLER
--Northwnd  için
--1) her bir üründe kaç adet satıldığını veren vw_UrunSatislari adında view yapınız
--2) Her bir müşterini kaç ürün aldığını hesaplayan vw_MusteriUrunSayisi adında view yapınız
--3)Her bir personelin getirdiği getiri toplamını hesaplayan vw_PersonelGetirileri adında view kodlayınız
--HastaneDB için
--4)Her bir klinikte kaç hastanın tedavi olduğunu bütün zamanlar için hesaplayan vw_KlinikHastaSayisi adında view kodlayınız



-- ONUR