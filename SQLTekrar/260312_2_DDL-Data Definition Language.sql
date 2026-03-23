use HastahaneDB
------------------------------------------------------------------------
-- DDL => Data Definition Language = Create, Alter, Drop ile tablo işlemleri yapmaktır.

-- Tabloyu oluşturmak için CREATE kullanılır:

go
create table Deneme
(Id int Identity(1,1) not null,
Adi nvarchar(250) not null,
Soyadi nvarchar(250) not null,
Constraint PK_Deneme Primary Key clustered
(Id asc)
)
go


-- Mevcut tabloya kolon eklemek için ALTER kullanılır:

alter table Deneme
add Adres nvarchar(Max) null;


-- Tabloyu tamamen silmek için DROP kullanılır (db'den mevcut isimdeki tablo kaldırılır):

drop table Deneme