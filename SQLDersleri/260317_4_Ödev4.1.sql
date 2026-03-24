-- ÖDEVLER:

-- HastahaneDB için
--4) Her bir klinikte kaç hastanın tedavi olduğunu bütün zamanlar için hesaplayan vw_KlinikHastaSayisi adında view kodlayınız.

use HastahaneDB

-- SORU-4:

-- View için script;
select
k.Adi, h.KayitTarihi,
COUNT(h.Id) as 'Hasta Sayısı'
from Klinikler as k
inner join Randevular as r on r.DoktorId=k.DoktorId
inner join Hastalar as h on h.Id=r.HastaId
group by k.Adi, h.KayitTarihi

-- View oluşturma;
go
create view vw_KlinikHastaSayisi
as
select
k.Adi, h.KayitTarihi,
COUNT(h.Id) as 'Hasta Sayısı'
from Klinikler as k
inner join Randevular as r on r.DoktorId=k.DoktorId
inner join Hastalar as h on h.Id=r.HastaId
group by k.Adi, h.KayitTarihi
go

-- View güncelleme;
go
alter view vw_KlinikHastaSayisi
as
select
k.Adi as 'Klinik Adı',
h.KayitTarihi as 'Hasta Kayıt Tarihi',
COUNT(h.Id) as 'Hasta Sayısı'
from Klinikler as k
inner join Randevular as r on r.DoktorId=k.DoktorId
inner join Hastalar as h on h.Id=r.HastaId
group by k.Adi, h.KayitTarihi
go

select *from vw_KlinikHastaSayisi