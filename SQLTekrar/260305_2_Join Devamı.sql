use OkulDB

-- Her bir sınıfta kaç öğrenci olduğunu hesaplayınız.
select *from Ogrenciler
select *from Sınıflar

select 
s.SınıfNo+'-'+s.SınıfSubesi Sınıf,
COUNT(o.OgrencilerID) as 'Öğrenci Sayısı'
from Ogrenciler as o
inner join Sınıflar as s on o.SinifID=s.SınıflarID
group by s.SınıfNo,s.SınıfSubesi


-- Her bir bölümde kaç öğrenci olduğunu hesaplayınız.
select *from Bolumler
select *from Ogrenciler
select *from Sınıflar

select 
b.BolumlerID, BolumAdi,
COUNT(o.OgrencilerID) as 'Öğrenci Sayısı'
from Bolumler as b
inner join Sınıflar as s on s.BolumID=b.BolumlerID
inner join Ogrenciler as o on o.SinifID=s.SınıflarID
group by b.BolumlerID, b.BolumAdi
order by b.BolumlerID