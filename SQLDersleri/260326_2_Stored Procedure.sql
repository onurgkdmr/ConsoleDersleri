-- ****************************************
-- 26 Mart 2026 SQL Dersleri
-- ****************************************
-- Stored Procedure
-- K�saca SP olarak isimlendirilir. SP'ler performans konusunda �ok iyi olduklar� i�in �ok kullan�lan bir nesnedir.
-- Sakl� yordamlar olarak bilinir.
/*
SP lerin �zellikleri:
1-Performanslar� �ok ba�ar�ld�r. 
2-CRUD i�lemleri SP ler ile yap�l�r
3-Parametre al�r, d�ng�, karar yap�lar� , case when then yap�lar� kullan�labilir
*/

use Nortwinddb

-- SP Olu�turulmas�:

go
create procedure sp_Kategori_Urunler
as
begin
select
c.CategoryName,p.ProductName,p.UnitPrice,p.UnitsInStock
from Categories c
join Products as p on p.CategoryID=c.CategoryID
end
go

-- SP �a�r�lmas�:

execute sp_Kategori_Urunler
exec sp_Kategori_Urunler

----------------------------------------------------------------

go
create proc sp_Kategori_Urun_Ara(@aranacakKelime nvarchar(100))
as
begin
select
c.CategoryName,p.ProductName,p.UnitPrice,p.UnitsInStock
from Categories c
join Products as p on p.CategoryID=c.CategoryID
where p.ProductName like '%'+@aranacakKelime+'%'
end
go

execute sp_Kategori_Urun_Ara 'c'
exec sp_Kategori_Urun_Ara 'ch'



-- ONUR