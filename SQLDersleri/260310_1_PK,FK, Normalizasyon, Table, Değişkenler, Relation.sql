--********************************************************
-- 10 Mart 2026 SQL Dersleri
-- PK, Identity Specification, FK, Normalizasyon, Table Relation Management (Tablo İlişki Yönetimi), Kolon Oluşturma, Veri Tipleri
--********************************************************

use HastahaneDB

/*
Klinikler
Branşlar
Hastalar
Doktorlar
Personeller
Kullanıcılar
Yetkiler
Randevular
*/


/*
Id => Identity (Kimlik)
*/


/*

Normalizasyon Kuralları:
1) 1-sonsuz: Bağlanan 2 tablodan birinde bulunan 1 data, diğerinde bulunan birden fazla data ile eşitleniyorsa gerçekleşir.
2) sonsuz-1: " "
3) 1-1: İki tablodan PK ile bağlanılır ve her bir dataya tek bir data eşitlenir.
4) sonsuz-sonsuz: İki tablo ile yapılamaz, üç tablo gereklidir. Birinci ve üçüncü tablo, ikinci tabloya sonsuz bağlanır.
*/