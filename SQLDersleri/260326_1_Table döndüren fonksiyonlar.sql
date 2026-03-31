-- *****************************************
-- 26 Mart 2026 SQL Dersleri
-- *****************************************
-- Function, Tablo döndüren fonksiyonlar

use HastahaneDB

go
create function fnc_Carp(@sayi1 int,@sayi2 int)
returns int
as
begin
-- Kodlar
return @sayi1*@sayi2
end
go

select *from Randevular

select dbo.fnc_Carp(5,6)

select dbo.fnc_Carp(DoktorId,HastaId),DoktorId,HastaId,tarih,Saat, GeldiMi from Randevular

-- Tablo Döndüren Fonksiyonlar

select *from Hastalar

go
create function fnc_Hastalar(@cinsiyet nvarchar(10))
returns table
as
return (select *from Hastalar where Cinsiyet like '%'+@cinsiyet+'%')
go

-- Table Function Kullanýmý

select *from dbo.fnc_Hastalar('Er')
select *from dbo.fnc_Hastalar('Kadin')

-- KBB bölümüne randevu alan hasta,doktor, randevu bilgilerini listeleyiniz.

select *from Randevular
select *from Doktorlar
select *from Branslar
-- *******************************************

declare @brans nvarchar(20)='Dahiliye'
select 
h.Adi,h.Soyadi,r.tarih,r.Saat,d.Adi,d.Soyadi,b.Adi
from Randevular as r
inner join Doktorlar as d on d.Id=r.DoktorId
inner join Branslar as b on b.Id=d.BransId
inner join Hastalar as h on h.Id=r.HastaId
where b.Adi like '%'+@brans+'%'



go
create function fnc_BransaGoreRandevuAra(@brans nvarchar(20))
returns table
as

return (select 
h.Adi as 'HastaAdi',h.Soyadi as 'HastaSoyadi',r.tarih,r.Saat,d.Adi as 'DoktorAdi',d.Soyadi as 'DoktorSoyadi',b.Adi as 'BransAdi'
from Randevular as r
inner join Doktorlar as d on d.Id=r.DoktorId
inner join Branslar as b on b.Id=d.BransId
inner join Hastalar as h on h.Id=r.HastaId
where b.Adi like '%'+@brans+'%')

go

select *from Branslar
select *from fnc_BransaGoreRandevuAra('Dah')
select *from fnc_BransaGoreRandevuAra('Orto')

-- Hasta adýna göre arama yapan, bulunan hastalarýn kaç randevusu olduðunu hasta bilgisi,randevu bilgisi veren fnc_HastaRandevularý adýnda bir fonksiyon ile kodlayýnýz.

select 
h.Adi,h.Soyadi,r.tarih,r.Saat
from Hastalar as h
inner join Randevular as r on r.HastaId=h.Id
where h.Adi like '%@a%' and h.Soyadi like '%k%'


go
create function fnc_HastaRandevularý(@adi nvarchar(50),@soyadi nvarchar(50))
returns table
as
return (select 
h.Adi,h.Soyadi,r.tarih,r.Saat
from Hastalar as h
inner join Randevular as r on r.HastaId=h.Id
where h.Adi like '%'+@adi+'%' and h.Soyadi like '%'+@soyadi+'%')
go

select *from Hastalar

select *from fnc_HastaRandevularý('Ahmet','Kara')

select *from dbo.fnc_HastaRandevularý('a','') 
