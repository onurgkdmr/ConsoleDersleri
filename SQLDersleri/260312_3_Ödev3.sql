-- ÖDEV: 
-- Her bir tabloya 5 data, Randevular tablosuna da  30 data ekleyiniz.

use HastahaneDB

--------------------------------------------------
-- Branşlar için 5 data:

insert into Branslar
(Adi,Aciklama)
values
('Kardiyoloji',null),
('Nöroloji',null),
('Genel Cerrahi',null),
('Üroloji',null),
('Göz Hastalıkları',null)

select *from Branslar
--------------------------------------------------
-- Doktorlar için 5 data:

insert into Doktorlar
(Adi,Soyadi,Cinsiyet,TC,Telefon,BransId,Email,Adres,DogumTarihi,DogumYeri,GirisTarihi,CikisTarihi,Aciklama)
values
('Ahmet','Yılmaz','Erkek','12345678901',null,4,'ahmet@gmail.com','10.10.1980',null,null,'01.01.2006',null,null),
('Metehan','Yıldırım','Erkek','12345678902','0538 238 38 38',5,'metehan@gmail.com',null,null,null,'01.01.2006',null,null),
('Hasan','Altınışık','Erkek','12345678903',null,6,'hasan@gmail.com','10.10.1979',null,null,'01.01.2006',null,null),
('Hüseyin','Altın','Erkek','12345678904','0538 239 39 39',7,null,null,null,null,'01.01.2006',null,null),
('Melih','Altınel','Erkek','12345678905',null,8,'melih@gmail.com','10.10.1978',null,null,'01.01.2006',null,null)

select *from Doktorlar
--------------------------------------------------
-- Hastalar için 5 data:

insert into Hastalar
(Adi,Soyadi,TC,Telefon,Email,Adres,KayitTarihi,DogumTarihi,DogumYeri,Cinsiyet,Aciklama)
values
('Ayça','Bakır','12345678906',null,'ayca@gmail.com',null,'01.01.2025','12.12.2005','İstanbul','Kadın',null),
('Yonca','Çakır','12345678907','0539 249 49 49',null,null,'01.02.2025','12.11.2005','İzmir','Kadın',null),
('Melda','Gümüş','12345678908',null,'melda@gmail.com','Harmandere Mah. Yeni Sok. No:4 Pendik-İstanbul','01.03.2025','12.10.2005',null,'Kadın',null),
('Selda','Bakırel','12345678909','0540 250 50 50',null,null,'01.04.2025','12.09.2005','Ankara','Kadın',null),
('Selma','Gümüşel','12345678910',null,'selma@gmail.com','Elmalıkent Mah. Barbar Sok. No:9 Ümraniye-İstanbul','01.05.2025','12.08.2005',null,'Kadın',null)

select *from Hastalar
--------------------------------------------------
-- Klinikler için 5 data:

insert into Klinikler
(Adi,Aciklama,DoktorId)
values
('Kardiyoloji',null,16),
('Nöroloji',null,17),
('Genel Cerrahi',null,18),
('Üroloji',null,19),
('Göz Hastalıkları',null,20)

select *from Klinikler
--------------------------------------------------
-- Kullanılıcılar için 5 data:

insert into Kullanicilar
(KullaniciAdi,Sifre,Adi,Soyadi,YetkiId,AktifMi,OlusturanId,KayitTarihi)
values
('kullanici-1','1234','Esin','Yanılmaz',2,1,null,'10.01.2026'),
('kullanici-2','12345','Selin','Yaz',3,1,1,'10.01.2025'),
('kullanici-3','123456','Nesin','Yazar',4,1,null,'10.01.2024'),
('kullanici-4','1234567','Yeşim','Yazı',5,1,1,'10.01.2023'),
('kullanici-5','12345678','Melis','Yazan',6,1,null,'10.01.2022')

select *from Kullanicilar
--------------------------------------------------
-- Personeller için 5 data:

insert into Personeller
(Adi,Soyadi,Cinsiyet,TC,Telefon,Email,Adres,GorevTanimi,DogumTarihi,DogumYeri,GirisTarihi,CikisTarihi,Aciklama,AktifMi)
values
('Hakan','Yalnız','Erkek','12345678914',null,'hakan@gmail.com',null,'Temizlik Personeli',null,null,'11.05.2016',null,'',1),
('Yavuz','Kaynak','Erkek','12345678915','0545 455 45 45','yavuz@gmail.com',null,'Sağlık Personeli',null,'Kocaeli','11.05.2015',null,'',1),
('Hami','Salın','Erkek','12345678916',null,null,null,'Laboratuvar Teknisyeni',null,null,'11.05.2014',null,'',1),
('Sami','Eski','Erkek','12345678917','0555 555 55 55',null,null,'Servis Sorumlusu',null,null,'11.05.2018',null,'',1),
('Yeliz','Yeni','Kadın','12345678918',null,'yeliz@gmail.com',null,'Hasta Kayıt Personeli',null,null,'11.05.2019',null,'',1)

select *from Personeller
--------------------------------------------------
-- Randevular için 30 data:

insert into Randevular
(Tarih,Saat,DoktorId,HastaId,Aciklama,KayitTarihi,GeldiMi,OlusturanId)
values
('03.26.2026','09:00',16,6,null,GETDATE(),1,1),
('03.26.2026','09:10',16,7,null,GETDATE(),1,1),
('03.26.2026','09:20',16,8,null,GETDATE(),1,1),
('03.26.2026','09:30',16,9,null,GETDATE(),1,1),
('03.26.2026','09:40',16,10,null,GETDATE(),0,1),
('03.26.2026','09:50',17,6,null,GETDATE(),1,1),
('03.26.2026','10:00',17,7,null,GETDATE(),1,1),
('03.26.2026','10:10',17,8,null,GETDATE(),1,1),
('03.26.2026','10:20',17,9,null,GETDATE(),1,1),
('03.26.2026','10:30',17,10,null,GETDATE(),1,1),
('03.27.2026','09:00',18,6,null,GETDATE(),1,1),
('03.27.2026','09:10',18,7,null,GETDATE(),0,1),
('03.27.2026','09:20',18,8,null,GETDATE(),1,1),
('03.27.2026','09:30',18,9,null,GETDATE(),1,1),
('03.27.2026','09:40',18,10,null,GETDATE(),1,1),
('03.27.2026','09:50',19,6,null,GETDATE(),1,1),
('03.27.2026','10:00',19,7,null,GETDATE(),1,1),
('03.27.2026','10:10',19,8,null,GETDATE(),1,1),
('03.27.2026','10:20',19,9,null,GETDATE(),0,1),
('03.27.2026','10:30',19,10,null,GETDATE(),1,1),
('03.28.2026','09:00',20,6,null,GETDATE(),1,1),
('03.28.2026','09:10',20,7,null,GETDATE(),1,1),
('03.28.2026','09:20',20,8,null,GETDATE(),1,1),
('03.28.2026','09:30',20,9,null,GETDATE(),1,1),
('03.28.2026','09:40',20,10,null,GETDATE(),0,1),
('03.28.2026','09:50',4,6,null,GETDATE(),1,1),
('03.28.2026','10:00',4,7,null,GETDATE(),1,1),
('03.28.2026','10:10',4,8,null,GETDATE(),1,1),
('03.28.2026','10:20',4,9,null,GETDATE(),0,1),
('03.28.2026','10:30',4,10,null,GETDATE(),1,1)

select *from Randevular
--------------------------------------------------
-- Yetkiler için 5 data:

insert into Yetkiler
(Adi)
values
('admin2'),('admin3'),('admin4'),('admin5'),('admin6')

select *from Yetkiler
