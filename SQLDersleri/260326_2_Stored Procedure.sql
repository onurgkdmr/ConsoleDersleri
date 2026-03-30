-- ****************************************
-- 26 Mart 2026 SQL Dersleri
-- ****************************************
-- Stored Procedure => Saklı yordam
-- Kısaca SP olarak isimlendirilir. SP'ler performans konusunda çok iyi oldukları için çok kullanılan bir nesnedir.
-- Saklı yordamlar olarak bilinir.
/*
SP lerin özellikleri:
1-Performansları çok başarılıdır. 
2-CRUD işlemleri SP ler ile yapılır.
3-Parametre alır, döngü, karar yapıları, case when then yapıları kullanılabilir.
*/

use NorthwindDB

-- SP Oluşturulması:

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

-- SP Çağırılması:

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



