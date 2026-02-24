------------------------------------------------
-- 24 Şubat 2026 SQL Dersi
------------------------------------------------
-- where, like, order by, operatörler, top
use OkulDB

-- siniflar tablosunu şubelerine göre sıralayınız.
select *from Sınıflar order by SınıfSubesi

-- Kadın öğrenciler arasında en genç olan 5 tanesini gösteriniz.
-- Ad-soyad, Doğum Tarihi, TC, Adres 
select top 5 
OgrenciAdi,OgrenciSoyadi,DogumTarihi,OgrenciTC,Adres from Ogrenciler
where lower (Cinsiyeti) not in('erkek')
order by DogumTarihi desc

-- Soyadı içinde d harfi olan ve TC'si olan erkek öğrencileri Ad-soyad,adres,doğum tarihi listesini yapınız.
select
OgrenciAdi,OgrenciSoyadi,OgrenciTC,Adres,DogumTarihi from Ogrenciler
where lower (Cinsiyeti) in('erkek') and OgrenciTC is not null and OgrenciTC!='' and OgrenciSoyadi like '%d%'

-- Bir okuldaki öğrencilerin babalarına mesaj atılacaktır. Bu mesaj için TC, Telefon numarası gereklidir. Bu şartlara göre veritabanından veli adı, soyadı, cinsiyet, TC, telefon ve adres bilgilerini getiren scripti (sql kodu) kodlayınız.
select VeliAdi, VeliSoyadi, Cinsiyet, VeliTC,Telefon,Adres from Veliler 
where Cinsiyet='Erkek' and VeliTC is not null and VeliTC!='' and Telefon is not null and Telefon!=''

-- 

