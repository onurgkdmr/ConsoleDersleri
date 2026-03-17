-- ************************************************
-- 21 Mart Perşembe 2026 SQL Dersleri
-- ************************************************

-- DML => Data Manipulation Language 
-- CRUD => Create (insert), Read (list-select), Update (update), Delete (delete)

use HastahaneDB

select *from Doktorlar
select *from Branslar

insert into Doktorlar
--(Adi,Soyadi,Cinsiyet,TC,Telefon,BransId,Adres,DogumTarihi,DogumYeri,GirisTarihi,CikisTarihi,Aciklama)
(Adi,Soyadi,Cinsiyet,TC,Telefon,BransId,Adres,DogumTarihi,DogumYeri,GirisTarihi,CikisTarihi)
values
('Pervin','Saralı','Kadın','10234567891','0544 444 44 44',1,'Pamuk Mah. Esenyalı Sok. No:45/7 Maltepe/İstanbul','01.01.1987','Çankırı',GETDATE(),null)

/*
Msg 547, Level 16, State 0, Line 13
The INSERT statement conflicted with the FOREIGN KEY constraint "FK_Doktorlar_Branslar". The conflict occurred in database "HastahaneDB", table "dbo.Branslar", column 'Id'.

Bu hata BransId için Brans tablosunda bu data yok (conflict-çakışma-eşleşmeme) demektir. Bu durumda bu Brans tablosunda Data yok ve data eklenmelidir. Ancak data varsa bile olan datanın Id değeri burada yazılmalıdır.
*/

insert into Branslar (Adi,Aciklama) values ('KBB',Null)
insert into Branslar (Adi,Aciklama) values ('Dahiliye',Null)
insert into Branslar (Adi,Aciklama) values ('Ortopedi',Null)

---------------------------------------------------------------------------------------------

insert into Doktorlar
(Adi,Soyadi,Cinsiyet,TC,Telefon,BransId,Adres,DogumTarihi,DogumYeri,GirisTarihi,CikisTarihi)
values
('Samet','Salı','Erkek','10234567891','0544 444 33 33',1,'Salman Mah. Konyalı Sok. No:10/11 Kartal/İstanbul','01.11.1991','Van',GETDATE(),null)

-- Dahiliye

insert into Doktorlar
(Adi,Soyadi,Cinsiyet,TC,Telefon,BransId,Adres,DogumTarihi,DogumYeri,GirisTarihi,CikisTarihi)
values
('Ülkü','Erden','Kadın','10234567800','0544 547 33 33',2,'Man Mah. Bahçıvan Sok. No:1/41 Fikirtepe/İstanbul','12.29.1990','Rize',GETDATE(),null)

-- Tarih eklerken ay-gün-yıl olarak eklendi. SQL İngiliz tarih formatını kabul eder.

insert into Doktorlar
(Adi,Soyadi,Cinsiyet,TC,Telefon,BransId,Adres,DogumTarihi,DogumYeri,GirisTarihi,CikisTarihi)
values
('Birol','Fatsalı','Erkek','10247567891','0544 554 21 54',2,'Salman Mah. Konyalı Sok. No:10/11 Kartal/İstanbul','01.11.1991','Van',GETDATE(),null)

insert into Doktorlar
(Adi,Soyadi,Cinsiyet,TC,Telefon,BransId,Adres,DogumTarihi,DogumYeri,GirisTarihi,CikisTarihi)
values
('Ömer','Palatsı','Erkek','1027891','0544 554 21 54',3,'Salman Mah. Konyalı Sok. No:10/11 Kartal/İstanbul','11.12.1988','Giresun',GETDATE(),null),
('Gaye','Ümreli','Kadın','1024751','0542 554 19 32',3,'Kahtalı Mah. Mala Sok. No:5/9 Kadıköy/İstanbul','01.9.1993','İstanbul',GETDATE(),null)

select *from Doktorlar

-- 5 tane klinik giriniz.

insert into Klinikler
values
('KBB-1',null,3),
('KBB-2',null,8),
('Dahiliye-1',null,6),
('Dahiliye-2',null,7),
('Dahiliye-2',null,4),
('Ortopedi-2',null,5)

select *from Klinikler

-- Data güncelleme

select *from Branslar
select *from Klinikler
select *from Doktorlar

update Doktorlar set Email='pervin@gmail.com',Aciklama='Test data eklemesi' where Id=3

-- Delete ile mevcut data silinebilir.

-- Update ve Delete ile çalışırken mutlaka sonuna where koşul bağlayıcısını ekleyin.
insert into Klinikler
values ('KBB-1',null,5)

select *from Klinikler

delete Klinikler where Id=10
delete Klinikler where Id in (9,8,7)

-- ÖDEV: 
-- Her bir tabloya 5 data, Randevular tablosuna da  30 data ekleyiniz.




