-- **********************************************
-- 27 Mart 2026 SQL Dersleri
-- **********************************************
-- SP ile CRUD İşlemleri
-- SP ile Insert, Update, Delete işlemlerinin yapılması

use HastahaneDB

select * from Doktorlar
select * from Branslar


insert into Branslar(Adi,Aciklama) values ('Göz','Uzmanlık alanda hizmet verir.')

go
create proc sp_Brans_Ekle
(
@adi nvarchar(250),
@aciklama nvarchar(MAX)
)
as
begin
insert into Branslar(Adi,Aciklama) values (@adi,@aciklama)
end
go

execute dbo.sp_Brans_Ekle 'Göz','Test'
execute dbo.sp_Brans_Ekle 'Göz','Test-1'

select *from Branslar

-- Aynı datanın insert edilmesini engellemek için aşağıdaki işlemi SP'ye alter yaparak uygulayalım.

go
alter proc sp_Brans_Ekle
(
@adi nvarchar(250),
@aciklama nvarchar(MAX)
)
as
begin

 declare @dataSayisi int = (select COUNT(Id) from Branslar where Adi=@adi)
if(@dataSayisi>1)
    begin--{
     print 'Bu data DB de mevcut'
    end--}
else
    begin--{
    insert into Branslar(Adi,Aciklama) values (@adi,@aciklama)
    end--}
end
go

execute dbo.sp_Brans_Ekle 'Göz','Test'

------------------------------------------------------------------------

go
create proc sp_Brans_Update
(
@id int,
@adi nvarchar(250),
@aciklama nvarchar(MAX)
)
as
begin
 declare @dataSayisi int = (select COUNT(Id) from Branslar where Adi=@adi)
if(@dataSayisi>0)
    begin--{
     print 'Bu data DB de mevcut'
    end--}
else
    begin--{
    update Branslar set Adi=@adi,Aciklama=@aciklama where Id=@id
    end--}
end
go

select *from Branslar

exec sp_Brans_Update 4,'Fizik Tedavi','Teknisyen fizyoterapist bakmaktadır.'
exec sp_Brans_Update 5,'Fizik Tedavi','Teknisyen fizyoterapist bakmaktadır.'

-----------------------------------------------------------------------------------

go
alter proc sp_Brans_Update
(
@id int,
@adi nvarchar(250),
@aciklama nvarchar(MAX)
)
as
begin
-- declare @dataSayisi int = (select COUNT(Id) from Branslar where Adi=@adi)
-- Exists => Data varsa true, yoksa false verir.
if(Exists(select * from Branslar where Adi=@adi))
    begin--{
     print 'Bu data DB de mevcut'
    end--}
else
    begin--{
    -- İç içe if-else blokları SQL içinde kullanılır.
    if(Exists(select * from Branslar where Id=@id))
    begin
    update Branslar set Adi=@adi,Aciklama=@aciklama where Id=@id
    end--}
    else
    begin
    print 'Bu Id değerinde bir Brans yok'
    end
    end
end
go

exec sp_Brans_Update 69,'Fizik Tedavi-5','Teknisyen fizyoterapist bakmaktadır.'

-- ÖDEV: 
-- CRUD konusunda yapılan ödevler için SP yapılacak.
/*
-- 30 tane Randevular, diğer tablolar için 10'ar tane data SP yapılarak eklenecek.
Koşul 1 => Her tablo için SP Update işlemi de yapılacak.
Koşul 2 => Tekrarlı data eklemesi engellenecek (Insert-Update için ayrı ayrı yapılacak).
*/


