use OkulDB

-- Her bir sınıfta kaç öğrenci olduğunu hesaplayınız.

select 
s.SınıfNo,
s.SınıfSubesi,
COUNT(OgrencilerID) as Mevcut
from Sınıflar as s
inner join Ogrenciler as o on o.SinifID=s.SınıflarID
group by s.SınıfNo,s.SınıfSubesi

-- Her bir bölümde kaç öğrenci olduğunu hesaplayınız.

select
b.BolumlerID, b.BolumAdi,
COUNT(OgrencilerID) as Mevcut
from Bolumler as b
inner join Sınıflar as s on s.BolumID=b.BolumlerID
inner join Ogrenciler as o on o.SinifID=s.SınıflarID
group by b.BolumlerID, b.BolumAdi
order by b.BolumlerID

-- ****************************************************

--Ödevler--right-left join ağırlıklı 
--1) Hangi öğrencilerin sınıf ataması olmamıştır
--2) Hangi sınıflara henüz kayıt yapılmamıştır
--3) Her bir öğrencinin aldığı ders sayısı
--4) Her bir velinin iletişimde olduğu öğrencisinin Sınıf öğretmeni bilgisi veli bilgi , öğrenci bilgisi veren script
--5) En çok izin yapan 10 öğrencilerin bilgisi ve öğrencilerin veli bilgisi listesini veriniz



-- ONUR