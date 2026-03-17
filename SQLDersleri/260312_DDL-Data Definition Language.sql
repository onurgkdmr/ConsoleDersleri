use HastahaneDB

-------------------------------------------------
-- DDL => Data Definition Language yapısı Create, Alter, Drop ile tablo işlemleri yapmaktır.

-- Tabloyu CREATE ile yapmak:
go
create table Deneme
(
Id int Identity(1,1) not null,
Adi nvarchar(250) not null,
Soyadi nvarchar(250) not null,
Constraint PK_Deneme Primary Key clustered
(Id asc)
);
go

-- Mevcut tabloya kolon eklemek için ALTER kullanılır:
alter table Deneme
add Adres nvarchar(MAX) null;

-- Tabloyu komple silmek için DROP kullanılır (db'den o isimdeki tablo kaldırılır):
drop table Deneme