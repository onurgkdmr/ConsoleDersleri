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


