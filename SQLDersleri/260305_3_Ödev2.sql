-- ÖDEV
use OkulDB

-- Ödevler => right-left join ağırlıklı 
--1) Hangi öğrencilerin sınıf ataması olmamıştır
--2) Hangi sınıflara henüz kayıt yapılmamıştır
--3) Her bir öğrencinin aldığı ders sayısı
--4) Her bir velinin iletişimde olduğu öğrencisinin Sınıf öğretmeni bilgisi veli bilgi , öğrenci bilgisi veren script
--5) En çok izin yapan 10 öğrencilerin bilgisi ve öğrencilerin veli bilgisi listesini veriniz.

-- SORU-1:
select *from Ogrenciler
select *from Sınıflar

select 
o.OgrenciAdi, 
o.OgrenciSoyadi, 
o.SinifID
from Ogrenciler as o
left join Sınıflar as s on s.SınıflarID=o.SinifID
where s.SınıflarID is null and o.OgrenciAdi is not null

-- SORU-2:
select
s.SınıflarID, s.SınıfNo
from Sınıflar as s
left join Ogrenciler as o on o.SinifID=s.SınıflarID
where o.OgrencilerID is null 

-- SORU-3:
select *from Dersler
select *from OgrenciDers
select *from Ogrenciler

select 
o.OgrencilerID, 
o.OgrenciAdi,
o.OgrenciSoyadi,
COUNT(d.DerslerID) as 'Ders Sayısı'
from Ogrenciler as o
inner join OgrenciDers as od on o.OgrencilerID=od.OgrenciID
inner join Dersler as d on d.DerslerID=od.DersID
group by o.OgrencilerID, o.OgrenciAdi, o.OgrenciSoyadi

-- SORU-4:

