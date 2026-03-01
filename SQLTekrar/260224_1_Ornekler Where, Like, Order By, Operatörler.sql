-------------------------------------------------
-- 24 Şubat 2026 SQL Dersi
-------------------------------------------------
-- where, like, order by, operatörler, top
use OkulDB

-- SORU-1:
-- Sınıflar tablosunu şubelerine göre sıralayınız.
select *from Sınıflar order by SınıfSubesi

-- SORU-2:
-- Kadın öğrenciler arasında en genç 5 kişiyi gösteriniz.
-- Kolonlar: Ad, Soyad, Doğum Tarihi, TC, Adres
select top 5 OgrenciAdi, OgrenciSoyadi, DogumTarihi, OgrenciTC, Adres from Ogrenciler where lower (Cinsiyeti) not in ('Erkek') and DogumTarihi is not null order by DogumTarihi desc

-- SORU-3:
-- Soyadı içinde d harfi olan ve TC'si olan erkek öğrencileri Ad, Soyad, Adres, Doğum Tarihi şeklinde listeleyiniz.
select OgrenciTC, OgrenciAdi, OgrenciSoyadi, Adres, DogumTarihi from Ogrenciler where lower (Cinsiyeti) in ('Erkek') and OgrenciSoyadi like '%d%' and (OgrenciTC is not null and OgrenciTC != '')

-- SORU-4:
-- Bir okuldaki öğrencilerin babalarına mesaj atılacaktır. Bu mesaj için TC, Telefon numarası gereklidir. Bu şartlara göre veritabanından Veli Adı, Soyadı, Cinsiyet, TC, Telefon ve Adres bilgilerini getiren scripti (SQL kodu) kodlayınız.
select VeliAdi, VeliSoyadi, Cinsiyet, VeliTC, Telefon, Adres from Veliler where Cinsiyet='Erkek' and (VeliTC is not null and VeliTC != '') and (Telefon is not null and Telefon != '')