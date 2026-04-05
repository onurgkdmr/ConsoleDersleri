-- ÖDEV: 
-- CRUD konusunda yapılan ödevler için SP yapılacak.
/*
-- 30 tane Randevular, diğer tablolar için 10'ar tane data SP yapılarak eklenecek.
Koşul 1 => Her tablo için SP Update işlemi de yapılacak.
Koşul 2 => Tekrarlı data eklemesi engellenecek (Insert-Update için ayrı ayrı yapılacak).
*/

use HastahaneDB

---------------------------------------------------------------------------------------------

-- Branşlar için 10 data:

insert into Branslar
(Adi,Aciklama)
values
('İç Hastalıkları',null),
('Adli Tıp',null),
('Göğüs Hastalıkları',null),
('Beyin ve Sinir Cerrahisi',null),
('Anesteziyoloji ve Reanimasyon',null),
('Kadın Hastalıkları ve Doğum',null),
('Kalp ve Damar Cerrahisi',null),
('Aile Hekimliği',null),
('Çocuk Cerrahisi',null),
('Acil Tıp',null)

-- CRUD ile SP oluşturma:
go
create proc sp_10_Brans_Ekle
(
@adi nvarchar(250),
@aciklama nvarchar(MAX)
)
as
begin
insert into Branslar(Adi,Aciklama) values (@adi,@aciklama)
end
go

execute dbo.sp_10_Brans_Ekle 'İç Hastalıkları',null
execute dbo.sp_10_Brans_Ekle 'Adli Tıp',null
execute dbo.sp_10_Brans_Ekle 'Göğüs Hastalıkları',null
execute dbo.sp_10_Brans_Ekle 'Beyin ve Sinir Cerrahisi',null
execute dbo.sp_10_Brans_Ekle 'Anesteziyoloji ve Reanimasyon',null
execute dbo.sp_10_Brans_Ekle 'Kadın Hastalıkları ve Doğum',null
execute dbo.sp_10_Brans_Ekle 'Kalp ve Damar Cerrahisi',null
execute dbo.sp_10_Brans_Ekle 'Aile Hekimliği',null
execute dbo.sp_10_Brans_Ekle 'Çocuk Cerrahisi',null
execute dbo.sp_10_Brans_Ekle 'Acil Tıp',null

select *from Branslar

-- Tekrarlı data engellemesi (Insert için):
go
alter proc sp_10_Brans_Ekle
(
@adi nvarchar(250),
@aciklama nvarchar(MAX)
)
as
begin

 declare @dataSayisi int = (select COUNT(Id) from Branslar where Adi=@adi)
if(@dataSayisi>=1)
    begin
     print 'Bu data DB de mevcut'
    end
else
    begin
    insert into Branslar(Adi,Aciklama) values (@adi,@aciklama)
    end
end
go

execute dbo.sp_10_Brans_Ekle 'Acil Tıp',null

-- SP Update İşlemi ve Tekrarlı Datayı Engelleme İşlemi:
go
create proc sp_10_Brans_Update
(
@id int,
@adi nvarchar(250),
@aciklama nvarchar(MAX)
)
as
begin
 declare @dataSayisi int = (select COUNT(Id) from Branslar where Adi=@adi)
if(@dataSayisi>0)
    begin
     print 'Bu data DB de mevcut'
    end
else
    begin
    update Branslar set Adi=@adi,Aciklama=@aciklama where Id=@id
    end
end
go

select *from Branslar

exec sp_10_Brans_Update 1007,'İç Hastalıkları','Genel sağlık sorunlarına bakmaktadır.'
exec sp_10_Brans_Update 1008,'İç Hastalıkları','Genel sağlık sorunlarına bakmaktadır.'

---------------------------------------------------------------------------------------------

-- Doktorlar için 10 data:

select *from Branslar
select *from Doktorlar

insert into Doktorlar
(Adi,Soyadi,Cinsiyet,TC,Telefon,BransId,Email,Adres,DogumTarihi,DogumYeri,GirisTarihi,CikisTarihi,Aciklama)
values
('Halil','Sirke','Erkek','12345678906',null,2015,'halil@gmail.com','10.10.1981',null,null,'01.01.2007',null,null),
('Hilal','Sirkeci','Kadın','12345678907','0550 250 50 50',2016,'hilal@gmail.com',null,null,null,'01.02.2007',null,null),
('Hilmi','Silik','Erkek','12345678908',null,2017,'hilmi@gmail.com','10.10.1982',null,null,'01.03.2007',null,null),
('Hüdaver','Saki','Erkek','12345678909','0551 251 51 51',2018,null,null,null,null,'01.04.2007',null,null),
('Halim','Sakin','Erkek','12345678910',null,2019,'halim@gmail.com','10.10.1983',null,null,'01.05.2007',null,null),
('Helim','Sucu','Erkek','12345678911',null,2020,'helim@gmail.com','10.10.1984',null,null,'01.06.2007',null,null),
('Helin','Sönmez','Kadın','12345678912',null,2021,'helin@gmail.com','10.10.1985',null,null,'01.07.2007',null,null),
('Harun','Söner','Erkek','12345678913',null,2022,'harun@gmail.com','10.10.1986',null,null,'01.08.2007',null,null),
('Hami','Simitçi','Erkek','12345678914',null,2023,'hami@gmail.com','10.10.1987',null,null,'01.09.2007',null,null),
('Hamit','Saklı','Erkek','12345678915',null,2024,'hamit@gmail.com','10.10.1988',null,null,'01.10.2007',null,null)

-- CRUD ile SP oluşturma:
go
create proc sp_10_Doktor_Ekle
(
@adi nvarchar(100),
@soyadi nvarchar(100),
@cinsiyet nvarchar(10),
@tc nchar(11),
@telefon nvarchar(25),
@bransid int,
@email nvarchar(25),
@adres nvarchar(MAX),
@dogumtarihi datetime,
@dogumyeri nvarchar(100),
@giristarihi datetime,
@cikistarihi datetime,
@aciklama nvarchar(MAX)
)
as
begin
insert into Doktorlar(Adi,Soyadi,Cinsiyet,TC,Telefon,BransId,Email,Adres,DogumTarihi,DogumYeri,GirisTarihi,CikisTarihi,Aciklama) values (@adi,@soyadi,@cinsiyet,@tc,@telefon,@bransid,@email,@adres,@dogumtarihi,@dogumyeri,@giristarihi,@cikistarihi,@aciklama)
end
go

execute dbo.sp_10_Doktor_Ekle 'Halil','Sirke','Erkek','12345678906',null,2015,'halil@gmail.com','10.10.1981',null,null,'01.01.2007',null,null
execute dbo.sp_10_Doktor_Ekle 
'Hilal','Sirkeci','Kadın','12345678907','0550 250 50 50',2016,'hilal@gmail.com',null,null,null,'01.02.2007',null,null
execute dbo.sp_10_Doktor_Ekle 'Hilmi','Silik','Erkek','12345678908',null,2017,'hilmi@gmail.com','10.10.1982',null,null,'01.03.2007',null,null
execute dbo.sp_10_Doktor_Ekle 
'Hüdaver','Saki','Erkek','12345678909','0551 251 51 51',2018,null,null,null,null,'01.04.2007',null,null
execute dbo.sp_10_Doktor_Ekle 'Halim','Sakin','Erkek','12345678910',null,2019,'halim@gmail.com','10.10.1983',null,null,'01.05.2007',null,null
execute dbo.sp_10_Doktor_Ekle 'Helim','Sucu','Erkek','12345678911',null,2020,'helim@gmail.com','10.10.1984',null,null,'01.06.2007',null,null
execute dbo.sp_10_Doktor_Ekle 'Helin','Sönmez','Kadın','12345678912',null,2021,'helin@gmail.com','10.10.1985',null,null,'01.07.2007',null,null
execute dbo.sp_10_Doktor_Ekle 'Harun','Söner','Erkek','12345678913',null,2022,'harun@gmail.com','10.10.1986',null,null,'01.08.2007',null,null
execute dbo.sp_10_Doktor_Ekle 'Hami','Simitçi','Erkek','12345678914',null,2023,'hami@gmail.com','10.10.1987',null,null,'01.09.2007',null,null
execute dbo.sp_10_Doktor_Ekle 'Hamit','Saklı','Erkek','12345678915',null,2024,'hamit@gmail.com','10.10.1988',null,null,'01.10.2007',null,null

select *from Doktorlar

-- Tekrarlı data engellemesi (Insert için):
go
alter proc sp_10_Doktor_Ekle
(
@adi nvarchar(100),
@soyadi nvarchar(100),
@cinsiyet nvarchar(10),
@tc nchar(11),
@telefon nvarchar(25),
@bransid int,
@email nvarchar(25),
@adres nvarchar(MAX),
@dogumtarihi datetime,
@dogumyeri nvarchar(100),
@giristarihi datetime,
@cikistarihi datetime,
@aciklama nvarchar(MAX)
)
as
begin

 declare @dataSayisi int = (select COUNT(Id) from Doktorlar where Adi=@adi)
if(@dataSayisi>=1)
    begin
     print 'Bu data DB de mevcut'
    end
else
    begin
    insert into Doktorlar(Adi,Soyadi,Cinsiyet,TC,Telefon,BransId,Email,Adres,DogumTarihi,DogumYeri,GirisTarihi,CikisTarihi,Aciklama) values (@adi,@soyadi,@cinsiyet,@tc,@telefon,@bransid,@email,@adres,@dogumtarihi,@dogumyeri,@giristarihi,@cikistarihi,@aciklama)
    end
end
go

exec dbo.sp_10_Doktor_Ekle 'Halil','Sirke','Erkek','12345678906',null,2015,'halil@gmail.com','10.10.1981',null,null,'01.01.2007',null,null

-- SP Update İşlemi ve Tekrarlı Datayı Engelleme İşlemi:
go
create proc sp_10_Doktor_Update
(
@id int,
@adi nvarchar(100),
@soyadi nvarchar(100)
)
as
begin
 declare @dataSayisi int = (select COUNT(Id) from Doktorlar where Adi=@adi)
if(@dataSayisi>0)
    begin
     print 'Bu data DB de mevcut'
    end
else
    begin
    update Doktorlar set Adi=@adi,Soyadi=@soyadi where Id=@id
    end
end
go

exec sp_10_Doktor_Update 1016,'Halil','Sirke'

---------------------------------------------------------------------------------------------

-- Hastalar için 10 data:

insert into Hastalar
(Adi,Soyadi,TC,Telefon,Email,Adres,KayitTarihi,DogumTarihi,DogumYeri,Cinsiyet,Aciklama)
values
('Kazım','Koç','12345678911',null,'kazım@gmail.com',null,'01.01.2024','12.12.2004','İstanbul','Erkek',null),
('Kerim','Kurt','12345678912','0539 249 49 49',null,null,'01.02.2024','12.11.2004','İzmir','Erkek',null),
('Kemal','Kara','12345678913',null,'kemal@gmail.com','Taşlı Mah. Eski Sok. No:9 Pendik-İstanbul','01.03.2024','12.10.2004',null,'Erkek',null),
('Kamuran','Keskin','12345678914','0540 250 50 50',null,null,'01.04.2024','12.09.2004','Ankara','Kadın',null),
('Kader','Kılıç','12345678915',null,'kader@gmail.com','Aynalıkent Mah. Bilye Sok. No:15 Ümraniye-İstanbul','01.05.2024','12.08.2004',null,'Kadın',null),
('Kadir','Kuyucu','12345678916',null,'kadir@gmail.com',null,'01.06.2024','12.07.2004','Malatya','Erkek',null),
('Kaya','Köse','12345678917',null,'kaya@gmail.com',null,'01.07.2024','12.06.2004',null,'Erkek',null),
('Kartal','Kızıl','12345678918',null,'kartal@gmail.com','Mehmetçik Mah. Delice Sok. No:41 Üsküdar-İstanbul','01.08.2024','12.05.2004','Erzurum','Erkek',null),
('Kuzey','Kömür','12345678919',null,'kuzey@gmail.com',null,'01.09.2024','12.04.2004',null,'Erkek',null),
('Kahraman','Köroğlu','12345678920',null,'kahraman@gmail.com',null,'01.10.2024','12.03.2004','Samsun','Erkek',null)

-- CRUD ile SP oluşturma:
go
create proc sp_10_Hasta_Ekle
(
@adi nvarchar(100),
@soyadi nvarchar(100),
@tc nchar(11),
@telefon nvarchar(25),
@email nvarchar(25),
@adres nvarchar(MAX),
@kayittarihi datetime,
@dogumtarihi datetime,
@dogumyeri nvarchar(100),
@cinsiyet nvarchar(10),
@aciklama nvarchar(MAX)
)
as
begin
insert into Hastalar
(Adi,Soyadi,TC,Telefon,Email,Adres,KayitTarihi,DogumTarihi,DogumYeri,Cinsiyet,Aciklama) values (@adi,@soyadi,@tc,@telefon,@email,@adres,@kayittarihi,@dogumtarihi,@dogumyeri,@cinsiyet,@aciklama)
end
go

execute dbo.sp_10_Hasta_Ekle 'Kazım','Koç','12345678911',null,'kazım@gmail.com',null,'01.01.2024','12.12.2004','İstanbul','Erkek',null
execute dbo.sp_10_Hasta_Ekle
'Kerim','Kurt','12345678912','0539 249 49 49',null,null,'01.02.2024','12.11.2004','İzmir','Erkek',null
execute dbo.sp_10_Hasta_Ekle
'Kemal','Kara','12345678913',null,'kemal@gmail.com','Taşlı Mah. Eski Sok. No:9 Pendik-İstanbul','01.03.2024','12.10.2004',null,'Erkek',null
execute dbo.sp_10_Hasta_Ekle
'Kamuran','Keskin','12345678914','0540 250 50 50',null,null,'01.04.2024','12.09.2004','Ankara','Kadın',null
execute dbo.sp_10_Hasta_Ekle
'Kader','Kılıç','12345678915',null,'kader@gmail.com','Aynalıkent Mah. Bilye Sok. No:15 Ümraniye-İstanbul','01.05.2024','12.08.2004',null,'Kadın',null
execute dbo.sp_10_Hasta_Ekle
'Kadir','Kuyucu','12345678916',null,'kadir@gmail.com',null,'01.06.2024','12.07.2004','Malatya','Erkek',null
execute dbo.sp_10_Hasta_Ekle
'Kaya','Köse','12345678917',null,'kaya@gmail.com',null,'01.07.2024','12.06.2004',null,'Erkek',null
execute dbo.sp_10_Hasta_Ekle
'Kartal','Kızıl','12345678918',null,'kartal@gmail.com','Mehmetçik Mah. Delice Sok. No:41 Üsküdar-İstanbul','01.08.2024','12.05.2004','Erzurum','Erkek',null
execute dbo.sp_10_Hasta_Ekle
'Kuzey','Kömür','12345678919',null,'kuzey@gmail.com',null,'01.09.2024','12.04.2004',null,'Erkek',null
execute dbo.sp_10_Hasta_Ekle
'Kahraman','Köroğlu','12345678920',null,'kahraman@gmail.com',null,'01.10.2024','12.03.2004','Samsun','Erkek',null

select *from Hastalar

-- Tekrarlı data engellemesi (Insert için):
go
alter proc sp_10_Hasta_Ekle
(
@adi nvarchar(100),
@soyadi nvarchar(100),
@tc nchar(11),
@telefon nvarchar(25),
@email nvarchar(25),
@adres nvarchar(MAX),
@kayittarihi datetime,
@dogumtarihi datetime,
@dogumyeri nvarchar(100),
@cinsiyet nvarchar(10),
@aciklama nvarchar(MAX)
)
as
begin

 declare @dataSayisi int = (select COUNT(Id) from Hastalar where Adi=@adi)
if(@dataSayisi>0)
    begin
     print 'Bu data DB de mevcut'
    end
else
    begin
    insert into Hastalar
(Adi,Soyadi,TC,Telefon,Email,Adres,KayitTarihi,DogumTarihi,DogumYeri,Cinsiyet,Aciklama) values (@adi,@soyadi,@tc,@telefon,@email,@adres,@kayittarihi,@dogumtarihi,@dogumyeri,@cinsiyet,@aciklama)
    end
end
go

execute dbo.sp_10_Hasta_Ekle 'Kahraman','Köroğlu','12345678920',null,'kahraman@gmail.com',null,'01.10.2024','12.03.2004','Samsun','Erkek',null

-- SP Update İşlemi ve Tekrarlı Datayı Engelleme İşlemi:
go
create proc sp_10_Hastalar_Update
(
@id int,
@adi nvarchar(100),
@soyadi nvarchar(100)
)
as
begin
 declare @dataSayisi int = (select COUNT(Id) from Hastalar where Adi=@adi)
if(@dataSayisi>0)
    begin
     print 'Bu data DB de mevcut'
    end
else
    begin
    update Hastalar set Adi=@adi,Soyadi=@soyadi where Id=@id
    end
end
go

execute dbo.sp_10_Hastalar_Update 1010,'Kader','Kılıç'

---------------------------------------------------------------------------------------------

-- Klinikler için 10 data:

insert into Klinikler
(Adi,Aciklama,DoktorId)
values
('Ramotoloji',null,1016),
('Nefroloji',null,1017),
('Hemotoloji',null,1018),
('Gastroenteroloji',null,1019),
('Psikiyatri',null,1020),
('Onkoloji',null,1021),
('Dermatoloji',null,1022),
('Enfeksiyon Hastalıkları',null,1023),
('Endokrinoloji ve Metabolizma',null,1024),
('Plastik,Rekonstrüktif ve Estetik Cerrahi',null,1025)

-- CRUD ile SP oluşturma:
go
create proc sp_10_Klinik_Ekle
(
@adi nvarchar(100),
@aciklama nvarchar(MAX),
@doktorid int
)
as
begin
insert into Klinikler (Adi,Aciklama,DoktorId) values (@adi,@aciklama,@doktorid)
end
go

execute dbo.sp_10_Klinik_Ekle 'Ramotoloji',null,1016
execute dbo.sp_10_Klinik_Ekle 'Nefroloji',null,1017
execute dbo.sp_10_Klinik_Ekle 'Hemotoloji',null,1018
execute dbo.sp_10_Klinik_Ekle 'Gastroenteroloji',null,1019
execute dbo.sp_10_Klinik_Ekle 'Psikiyatri',null,1020
execute dbo.sp_10_Klinik_Ekle 'Onkoloji',null,1021
execute dbo.sp_10_Klinik_Ekle 'Dermatoloji',null,1022
execute dbo.sp_10_Klinik_Ekle 'Enfeksiyon Hastalıkları',null,1023
execute dbo.sp_10_Klinik_Ekle 'Endokrinoloji ve Metabolizma',null,1024
execute dbo.sp_10_Klinik_Ekle 'Plastik,Rekonstrüktif ve Estetik Cerrahi',null,1025

select *from Klinikler

-- Tekrarlı data engellemesi (Insert için):
go
alter proc sp_10_Klinik_Ekle
(
@adi nvarchar(100),
@aciklama nvarchar(MAX),
@doktorid int
)
as
begin

 declare @dataSayisi int = (select COUNT(Id) from Klinikler where Adi=@adi)
if(@dataSayisi>0)
    begin
     print 'Bu data DB de mevcut'
    end
else
    begin
   insert into Klinikler (Adi,Aciklama,DoktorId) values (@adi,@aciklama,@doktorid)
    end
end
go

execute dbo.sp_10_Klinik_Ekle 'Ramotoloji',null,1016

-- SP Update İşlemi ve Tekrarlı Datayı Engelleme İşlemi:
go
create proc sp_10_Klinikler_Update
(
@id int,
@adi nvarchar(100)
)
as
begin
 declare @dataSayisi int = (select COUNT(Id) from Klinikler where Adi=@adi)
if(@dataSayisi>0)
    begin
     print 'Bu data DB de mevcut'
    end
else
    begin
    update Klinikler set Adi=@adi where Id=@id
    end
end
go

execute dbo.sp_10_Klinikler_Update 1013,'Dermatoloji'

---------------------------------------------------------------------------------------------

-- Kullanıcılar için 10 data:

insert into Kullanicilar
(KullaniciAdi,Sifre,Adi,Soyadi,YetkiId,AktifMi,OlusturanId,KayitTarihi)
values
('kullanici-11','123456780','Hande','Erbaş',1002,1,null,'10.01.2021'),
('kullanici-12','123456781','Hale','Ergin',1003,1,1,'10.02.2021'),
('kullanici-13','123456782','Hazal','Eroğlu',1004,1,null,'10.03.2021'),
('kullanici-14','123456783','Hilal','Ersoy',1005,1,1,'10.04.2021'),
('kullanici-15','123456784','Hülya','Erdem',1006,1,null,'10.05.2021'),
('kullanici-16','123456785','Hatice','Erol',1007,1,null,'10.06.2021'),
('kullanici-17','123456786','Havva','Ekinci',1008,1,null,'10.07.2021'),
('kullanici-18','123456787','Hayal','Engin',1009,1,null,'10.08.2021'),
('kullanici-19','123456788','Haydar','Eyüboğlu',1010,1,null,'10.09.2021'),
('kullanici-20','123456789','Hızır','Elçi',1011,1,null,'10.10.2021')

-- CRUD ile SP oluşturma:
go
create proc sp_10_Kullanici_Ekle
(
@kullaniciadi nvarchar(100),
@sifre nvarchar(100),
@adi nvarchar(150),
@soyadi nvarchar(150),
@yetkiid int,
@aktifmi bit,
@olusturanid int,
@kayittarihi datetime
)
as
begin
insert into Kullanicilar (KullaniciAdi,Sifre,Adi,Soyadi,YetkiId,AktifMi,OlusturanId,KayitTarihi)
values (@kullaniciadi,@sifre,@adi,@soyadi,@yetkiid,@aktifmi,@olusturanid,@kayittarihi)
end
go

execute dbo.sp_10_Kullanici_Ekle 'kullanici-11','123456780','Hande','Erbaş',1002,1,null,'10.01.2021'
execute dbo.sp_10_Kullanici_Ekle 'kullanici-12','123456781','Hale','Ergin',1003,1,1,'10.02.2021'
execute dbo.sp_10_Kullanici_Ekle 'kullanici-13','123456782','Hazal','Eroğlu',1004,1,null,'10.03.2021'
execute dbo.sp_10_Kullanici_Ekle 'kullanici-14','123456783','Hilal','Ersoy',1005,1,1,'10.04.2021'
execute dbo.sp_10_Kullanici_Ekle 'kullanici-15','123456784','Hülya','Erdem',1006,1,null,'10.05.2021'
execute dbo.sp_10_Kullanici_Ekle 'kullanici-16','123456785','Hatice','Erol',1007,1,null,'10.06.2021'
execute dbo.sp_10_Kullanici_Ekle 'kullanici-17','123456786','Havva','Ekinci',1008,1,null,'10.07.2021'
execute dbo.sp_10_Kullanici_Ekle 'kullanici-18','123456787','Hayal','Engin',1009,1,null,'10.08.2021'
execute dbo.sp_10_Kullanici_Ekle 'kullanici-19','123456788','Haydar','Eyüboğlu',1010,1,null,'10.09.2021'
execute dbo.sp_10_Kullanici_Ekle 'kullanici-20','123456789','Hızır','Elçi',1011,1,null,'10.10.2021'

select *from Kullanicilar

-- Tekrarlı data engellemesi (Insert için):
go
alter proc sp_10_Kullanici_Ekle
(
@kullaniciadi nvarchar(100),
@sifre nvarchar(100),
@adi nvarchar(150),
@soyadi nvarchar(150),
@yetkiid int,
@aktifmi bit,
@olusturanid int,
@kayittarihi datetime
)
as
begin

 declare @dataSayisi int = (select COUNT(Id) from Kullanicilar where KullaniciAdi=@kullaniciadi)
if(@dataSayisi>0)
    begin
     print 'Bu data DB de mevcut'
    end
else
    begin
    insert into Kullanicilar (KullaniciAdi,Sifre,Adi,Soyadi,YetkiId,AktifMi,OlusturanId,KayitTarihi)
    values (@kullaniciadi,@sifre,@adi,@soyadi,@yetkiid,@aktifmi,@olusturanid,@kayittarihi)
    end
end
go

execute dbo.sp_10_Kullanici_Ekle 'kullanici-20','123456789','Hızır','Elçi',1011,1,null,'10.10.2021'

-- SP Update İşlemi ve Tekrarlı Datayı Engelleme İşlemi:
go
create proc sp_10_Kullanicilar_Update
(
@id int,
@kullaniciadi nvarchar(100)
)
as
begin
 declare @dataSayisi int = (select COUNT(Id) from Kullanicilar where KullaniciAdi=@kullaniciadi)
if(@dataSayisi>0)
    begin
     print 'Bu data DB de mevcut'
    end
else
    begin
    update Kullanicilar set KullaniciAdi=@kullaniciadi where Id=@id
    end
end
go

execute dbo.sp_10_Kullanicilar_Update 1008,'kullanici-17'

---------------------------------------------------------------------------------------------

-- Yetkiler için 10 data:

insert into Yetkiler
(Adi)
values
('admin11'),('admin12'),('admin13'),('admin14'),('admin15'),('admin16'),('admin17'),('admin18'),('admin19'),('admin20')

select *from Yetkiler

-- CRUD ile SP oluşturma:
go
create proc sp_10_Yetki_Ekle
(
@adi nvarchar(150)
)
as
begin
insert into Yetkiler(Adi) values (@adi)
end
go

execute dbo.sp_10_Yetki_Ekle 'admin11'
execute dbo.sp_10_Yetki_Ekle 'admin12'
execute dbo.sp_10_Yetki_Ekle 'admin13'
execute dbo.sp_10_Yetki_Ekle 'admin14'
execute dbo.sp_10_Yetki_Ekle 'admin15'
execute dbo.sp_10_Yetki_Ekle 'admin16'
execute dbo.sp_10_Yetki_Ekle 'admin17'
execute dbo.sp_10_Yetki_Ekle 'admin18'
execute dbo.sp_10_Yetki_Ekle 'admin19'
execute dbo.sp_10_Yetki_Ekle 'admin20'

select *from Yetkiler

-- Tekrarlı data engellemesi (Insert için):
go
alter proc sp_10_Yetki_Ekle
(
@adi nvarchar(150)
)
as
begin

 declare @dataSayisi int = (select COUNT(Id) from Yetkiler where Adi=@adi)
if(@dataSayisi>0)
    begin
     print 'Bu data DB de mevcut'
    end
else
    begin
   insert into Yetkiler (Adi) values (@adi)
    end
end
go

execute dbo.sp_10_Yetki_Ekle 'admin12'

-- SP Update İşlemi ve Tekrarlı Datayı Engelleme İşlemi:
go
create proc sp_10_Yetkiler_Update
(
@id int,
@adi nvarchar(150)
)
as
begin
 declare @dataSayisi int = (select COUNT(Id) from Yetkiler where Adi=@adi)
if(@dataSayisi>0)
    begin
     print 'Bu data DB de mevcut'
    end
else
    begin
    update Yetkiler set Adi=@adi where Id=@id
    end
end
go

execute dbo.sp_10_Yetkiler_Update 1004,'admin13'

---------------------------------------------------------------------------------------------

-- Personeller için 10 data:

insert into Personeller
(Adi,Soyadi,Cinsiyet,TC,Telefon,Email,Adres,GorevTanimi,DogumTarihi,DogumYeri,GirisTarihi,CikisTarihi,Aciklama,AktifMi)
values
('Lale','Laçin','Kadın','12345678919',null,'lale@gmail.com',null,'Temizlik Personeli',null,null,'03.01.2015',null,'',1),
('Leyla','Liman','Kadın','12345678920','0540 440 40 40','leyla@gmail.com',null,'Sağlık Personeli',null,'Kocaeli','03.02.2015',null,'',1),
('Luna','Limon','Kadın','12345678921',null,null,null,'Laboratuvar Teknisyeni',null,null,'03.03.2015',null,'',1),
('Lina','Lal','Kadın','12345678922','0560 660 60 60',null,null,'Servis Sorumlusu',null,null,'03.04.2015',null,'',1),
('Lara','Lira','Kadın','12345678923',null,'lara@gmail.com',null,'Hasta Kayıt Personeli',null,null,'03.05.2015',null,'',1),
('Liya','Laleli','Kadın','12345678924',null,'liya@gmail.com',null,'Hasta Kayıt Personeli',null,null,'03.06.2015',null,'',1),
('Lidya','Liralı','Kadın','12345678925',null,'lidya@gmail.com',null,'Servis Sorumlusu',null,null,'03.07.2016',null,'',1),
('Latife','Limancı','Kadın','12345678926',null,'latife@gmail.com',null,'Laboratuvar Teknisyeni',null,null,'03.07.2015',null,'',1),
('Lerzan','Limanlar','Kadın','12345678927',null,'lerzan@gmail.com',null,'Temizlik Personeli',null,null,'03.08.2015',null,'',1),
('Leman','Laçinler','Kadın','12345678928',null,'leman@gmail.com',null,'Hasta Kayıt Personeli',null,null,'03.09.2015',null,'',1)

-- CRUD ile SP oluşturma:

go
create proc sp_10_Personel_Ekle
(
@adi nvarchar(150),
@soyadi nvarchar(150),
@cinsiyet nvarchar(10),
@tc nchar(11),
@telefon nvarchar(25),
@email nvarchar(50),
@adres nvarchar(MAX),
@gorevtanimi nvarchar(150),
@dogumtarihi datetime,
@dogumyeri nvarchar(100),
@giristarihi datetime,
@cikistarihi datetime,
@aciklama nvarchar(MAX),
@aktifmi bit
)
as
begin
insert into Personeller
(Adi,Soyadi,Cinsiyet,TC,Telefon,Email,Adres,GorevTanimi,DogumTarihi,DogumYeri,GirisTarihi,CikisTarihi,Aciklama,AktifMi)
values
(@adi,@soyadi,@cinsiyet,@tc,@telefon,@email,@adres,@gorevtanimi,@dogumtarihi,@dogumyeri,@giristarihi,@cikistarihi,@aciklama,@aktifmi)
end
go

execute dbo.sp_10_Personel_Ekle 'Lale','Laçin','Kadın','12345678919',null,'lale@gmail.com',null,'Temizlik Personeli',null,null,'03.01.2015',null,'',1
execute dbo.sp_10_Personel_Ekle
'Leyla','Liman','Kadın','12345678920','0540 440 40 40','leyla@gmail.com',null,'Sağlık Personeli',null,'Kocaeli','03.02.2015',null,'',1
execute dbo.sp_10_Personel_Ekle
'Luna','Limon','Kadın','12345678921',null,null,null,'Laboratuvar Teknisyeni',null,null,'03.03.2015',null,'',1
execute dbo.sp_10_Personel_Ekle
'Lina','Lal','Kadın','12345678922','0560 660 60 60',null,null,'Servis Sorumlusu',null,null,'03.04.2015',null,'',1
execute dbo.sp_10_Personel_Ekle
'Lara','Lira','Kadın','12345678923',null,'lara@gmail.com',null,'Hasta Kayıt Personeli',null,null,'03.05.2015',null,'',1
execute dbo.sp_10_Personel_Ekle
'Liya','Laleli','Kadın','12345678924',null,'liya@gmail.com',null,'Hasta Kayıt Personeli',null,null,'03.06.2015',null,'',1
execute dbo.sp_10_Personel_Ekle
'Lidya','Liralı','Kadın','12345678925',null,'lidya@gmail.com',null,'Servis Sorumlusu',null,null,'03.07.2016',null,'',1
execute dbo.sp_10_Personel_Ekle
'Latife','Limancı','Kadın','12345678926',null,'latife@gmail.com',null,'Laboratuvar Teknisyeni',null,null,'03.07.2015',null,'',1
execute dbo.sp_10_Personel_Ekle
'Lerzan','Limanlar','Kadın','12345678927',null,'lerzan@gmail.com',null,'Temizlik Personeli',null,null,'03.08.2015',null,'',1
execute dbo.sp_10_Personel_Ekle
'Leman','Laçinler','Kadın','12345678928',null,'leman@gmail.com',null,'Hasta Kayıt Personeli',null,null,'03.09.2015',null,'',1

select *from Personeller

-- Tekrarlı data engellemesi (Insert için):
go
alter proc sp_10_Personel_Ekle
(
@adi nvarchar(150),
@soyadi nvarchar(150),
@cinsiyet nvarchar(10),
@tc nchar(11),
@telefon nvarchar(25),
@email nvarchar(50),
@adres nvarchar(MAX),
@gorevtanimi nvarchar(150),
@dogumtarihi datetime,
@dogumyeri nvarchar(100),
@giristarihi datetime,
@cikistarihi datetime,
@aciklama nvarchar(MAX),
@aktifmi bit
)
as
begin

 declare @dataSayisi int = (select COUNT(Id) from Personeller where Adi=@adi)
if(@dataSayisi>0)
    begin
     print 'Bu data DB de mevcut'
    end
else
    begin
    insert into Personeller
    (Adi,Soyadi,Cinsiyet,TC,Telefon,Email,Adres,GorevTanimi,DogumTarihi,DogumYeri,GirisTarihi,CikisTarihi,Aciklama,AktifMi)
    values
    (@adi,@soyadi,@cinsiyet,@tc,@telefon,@email,@adres,@gorevtanimi,@dogumtarihi,@dogumyeri,@giristarihi,@cikistarihi,@aciklama,@aktifmi)
    end
end
go

execute dbo.sp_10_Personel_Ekle 'Lerzan','Limanlar','Kadın','12345678927',null,'lerzan@gmail.com',null,'Temizlik Personeli',null,null,'03.08.2015',null,'',1

-- SP Update İşlemi ve Tekrarlı Datayı Engelleme İşlemi:
go
create proc sp_10_Personeller_Update
(
@id int,
@adi nvarchar(150),
@soyadi nvarchar(100)
)
as
begin
 declare @dataSayisi int = (select COUNT(Id) from Personeller where Adi=@adi and Soyadi=@soyadi)
if(@dataSayisi>0)
    begin
     print 'Bu data DB de mevcut'
    end
else
    begin
    update Personeller set Adi=@adi,Soyadi=@soyadi where Id=@id
    end
end
go

execute dbo.sp_10_Yetkiler_Update 1010,'Lerzan'

--------------------------------------------------

-- Randevular için 30 data:

insert into Randevular
(tarih,Saat,DoktorId,HastaId,Aciklama,KayitTarihi,GeldiMi,OlusturanId)
values
('04.06.2026','09:00',1016,1006,null,GETDATE(),1,1),
('04.06.2026','09:10',1016,1007,null,GETDATE(),1,1),
('04.06.2026','09:20',1016,1008,null,GETDATE(),1,1),
('04.06.2026','09:30',1016,1009,null,GETDATE(),1,1),
('04.06.2026','09:40',1016,1010,null,GETDATE(),0,1),
('04.06.2026','09:50',1017,1011,null,GETDATE(),1,1),
('04.06.2026','10:00',1017,1012,null,GETDATE(),1,1),
('04.06.2026','10:10',1017,1013,null,GETDATE(),1,1),
('04.06.2026','10:20',1017,1014,null,GETDATE(),1,1),
('04.06.2026','10:30',1017,1019,null,GETDATE(),1,1),
('04.07.2026','09:00',1018,1006,null,GETDATE(),1,1),
('04.07.2026','09:10',1018,1007,null,GETDATE(),0,1),
('04.07.2026','09:20',1018,1008,null,GETDATE(),1,1),
('04.07.2026','09:30',1018,1009,null,GETDATE(),1,1),
('04.07.2026','09:40',1018,1010,null,GETDATE(),1,1),
('04.07.2026','09:50',1019,1011,null,GETDATE(),1,1),
('04.07.2026','10:00',1019,1012,null,GETDATE(),1,1),
('04.07.2026','10:10',1019,1013,null,GETDATE(),1,1),
('04.07.2026','10:20',1019,1014,null,GETDATE(),0,1),
('04.07.2026','10:30',1019,1019,null,GETDATE(),1,1),
('04.08.2026','09:00',1020,1006,null,GETDATE(),1,1),
('04.08.2026','09:10',1020,1007,null,GETDATE(),1,1),
('04.08.2026','09:20',1020,1008,null,GETDATE(),1,1),
('04.08.2026','09:30',1020,1009,null,GETDATE(),1,1),
('04.08.2026','09:40',1020,1010,null,GETDATE(),0,1),
('04.08.2026','09:50',1021,1011,null,GETDATE(),1,1),
('04.08.2026','10:00',1021,1012,null,GETDATE(),1,1),
('04.08.2026','10:10',1021,1013,null,GETDATE(),1,1),
('04.08.2026','10:20',1021,1014,null,GETDATE(),0,1),
('04.08.2026','10:30',1021,1019,null,GETDATE(),1,1)

-- CRUD ile SP oluşturma:

go
create proc sp_30_Randevu_Ekle
(
@tarih date,
@saat time(7),
@doktorid int,
@hastaid int,
@aciklama nvarchar(MAX),
@kayittarihi datetime,
@geldimi bit,
@olusturanid int
)
as
begin
insert into Randevular
(tarih,Saat,DoktorId,HastaId,Aciklama,KayitTarihi,GeldiMi,OlusturanId)
values
(@tarih,@saat,@doktorid,@hastaid,@aciklama,@kayittarihi,@geldimi,@olusturanid)
end
go

execute dbo.sp_30_Randevu_Ekle '04.06.2026','09:00',1016,1006,null,'04.05.2026',1,1
execute dbo.sp_30_Randevu_Ekle '04.06.2026','09:10',1016,1007,null,'04.05.2026',1,1        
execute dbo.sp_30_Randevu_Ekle '04.06.2026','09:20',1016,1008,null,'04.05.2026',1,1        
execute dbo.sp_30_Randevu_Ekle '04.06.2026','09:30',1016,1009,null,'04.05.2026',1,1        
execute dbo.sp_30_Randevu_Ekle '04.06.2026','09:40',1016,1010,null,'04.05.2026',0,1        
execute dbo.sp_30_Randevu_Ekle '04.06.2026','09:50',1017,1011,null,'04.05.2026',1,1        
execute dbo.sp_30_Randevu_Ekle '04.06.2026','10:00',1017,1012,null,'04.05.2026',1,1        
execute dbo.sp_30_Randevu_Ekle '04.06.2026','10:10',1017,1013,null,'04.05.2026',1,1       
execute dbo.sp_30_Randevu_Ekle '04.06.2026','10:20',1017,1014,null,'04.05.2026',1,1        
execute dbo.sp_30_Randevu_Ekle '04.06.2026','10:30',1017,1019,null,'04.05.2026',1,1        
execute dbo.sp_30_Randevu_Ekle '04.07.2026','09:00',1018,1006,null,'04.05.2026',1,1        
execute dbo.sp_30_Randevu_Ekle '04.07.2026','09:10',1018,1007,null,'04.05.2026',0,1       
execute dbo.sp_30_Randevu_Ekle '04.07.2026','09:20',1018,1008,null,'04.05.2026',1,1       
execute dbo.sp_30_Randevu_Ekle '04.07.2026','09:30',1018,1009,null,'04.05.2026',1,1        
execute dbo.sp_30_Randevu_Ekle '04.07.2026','09:40',1018,1010,null,'04.05.2026',1,1        
execute dbo.sp_30_Randevu_Ekle '04.07.2026','09:50',1019,1011,null,'04.05.2026',1,1        
execute dbo.sp_30_Randevu_Ekle '04.07.2026','10:00',1019,1012,null,'04.05.2026',1,1        
execute dbo.sp_30_Randevu_Ekle '04.07.2026','10:10',1019,1013,null,'04.05.2026',1,1        
execute dbo.sp_30_Randevu_Ekle '04.07.2026','10:20',1019,1014,null,'04.05.2026',0,1        
execute dbo.sp_30_Randevu_Ekle '04.07.2026','10:30',1019,1019,null,'04.05.2026',1,1        
execute dbo.sp_30_Randevu_Ekle '04.08.2026','09:00',1020,1006,null,'04.05.2026',1,1        
execute dbo.sp_30_Randevu_Ekle '04.08.2026','09:10',1020,1007,null,'04.05.2026',1,1        
execute dbo.sp_30_Randevu_Ekle '04.08.2026','09:20',1020,1008,null,'04.05.2026',1,1        
execute dbo.sp_30_Randevu_Ekle '04.08.2026','09:30',1020,1009,null,'04.05.2026',1,1       
execute dbo.sp_30_Randevu_Ekle '04.08.2026','09:40',1020,1010,null,'04.05.2026',0,1        
execute dbo.sp_30_Randevu_Ekle '04.08.2026','09:50',1021,1011,null,'04.05.2026',1,1        
execute dbo.sp_30_Randevu_Ekle '04.08.2026','10:00',1021,1012,null,'04.05.2026',1,1        
execute dbo.sp_30_Randevu_Ekle '04.08.2026','10:10',1021,1013,null,'04.05.2026',1,1        
execute dbo.sp_30_Randevu_Ekle '04.08.2026','10:20',1021,1014,null,'04.05.2026',0,1        
execute dbo.sp_30_Randevu_Ekle '04.08.2026','10:30',1021,1019,null,'04.05.2026',1,1        

-- Tekrarlı data engellemesi (Insert için):
go
alter proc sp_30_Randevu_Ekle
(
@tarih date,
@saat time(7),
@doktorid int,
@hastaid int,
@aciklama nvarchar(MAX),
@kayittarihi datetime,
@geldimi bit,
@olusturanid int
)
as
begin

 declare @dataSayisi int = (select COUNT(Id) from Randevular where DoktorId=@doktorid and HastaId=@hastaid)
if(@dataSayisi>0)
    begin
     print 'Bu data DB de mevcut'
    end
else
    begin
    insert into Randevular
    (tarih,Saat,DoktorId,HastaId,Aciklama,KayitTarihi,GeldiMi,OlusturanId)
    values
    (@tarih,@saat,@doktorid,@hastaid,@aciklama,@kayittarihi,@geldimi,@olusturanid)
    end
end
go

execute dbo.sp_30_Randevu_Ekle '04.08.2026','10:30',1021,1019,null,'04.05.2026',1,1

-- SP Update İşlemi ve Tekrarlı Datayı Engelleme İşlemi:
go
create proc sp_30_Randevular_Update
(
@id int,
@tarih date,
@saat time(7),
@doktorid int,
@hastaid int
)
as
begin
 declare @dataSayisi int = (select COUNT(Id) from Randevular where tarih=@tarih and Saat=@saat and DoktorId=@doktorid and HastaId=@hastaid)
if(@dataSayisi>0)
    begin
     print 'Bu data DB de mevcut'
    end
else
    begin
    update Randevular set tarih=@tarih,Saat=@saat,DoktorId=@doktorid,HastaId=@hastaid where Id=@id
    end
end
go

execute dbo.sp_30_Randevular_Update 2038,'2026-04-08','10:20',1021,1014  

select *from Randevular
