-- *********************************************
-- SQL'de Function - 24 Mart 2026 SQL Dersleri
-- *********************************************
-- Fonksiyon nedir?
-- Tablolar, kolonlar üzerinde iþlem yapmak için kullanýlýr.
-- Deðer verir (döndürür), parametre alýr.
-- *********************************************

-- Kolon iþlemleri için kullanýlan Functions (fonksiyonlar)

-- Function Oluþturma:

go
create function fnc_Topla(@sayi1 int, @sayi2 int)
returns int --Deðer döndürecek veri tipi returns anahtar kelimesi ile verilmelidir.
as --Kod gövdesinin baþladýðýný gösterir.
begin --Baþla-{
	declare @sonuc int --Declare => Deðiþken tanýmlayýnca kullanýlýr.
	--@sonuc => deðiþken, int veri tipi
	set @sonuc = @sayi1+@sayi2 --SQL'de bir deðiþken deðer atarken, iþlem yaparken set anahtar kelimesi kullanýlýr.
	return @sonuc
	--return @sayi1+@sayi2 => Kýsa olarak bu þekilde tanýmlanabilir.
end --Bitir-}
go

-- Bu iþlemi execute ettikten sonra Programmability/Functions/Scalar-valued Functions klasörü altýnda fnc_Topla adýnda bir function oluþacaktýr.
-- Scalar => Tekil, tek
-- Valued => Deðer döndüren

-- Function kullanýmý/çaðrýlmasý:

select dbo.fnc_Topla(5,6), dbo.fnc_Topla(-9,582)

select *from Products

-- Fiyata belli oranda bir zam yapan function kodlayalým:

select ProductName, UnitPrice, (UnitPrice + UnitPrice*10/100) from Products

go
create function fnc_Zam(@zamOran decimal(5,2), @fiyat decimal(18,2))
returns decimal(18,2)
as
begin
-- UnitPrice + UnitPrice*10/100
return @fiyat + @fiyat*@zamOran/100
end
go

select dbo.fnc_Zam(10,100)
select
ProductName,
UnitPrice,
dbo.fnc_Zam(10,UnitPrice) as 'Zam %10',
dbo.fnc_Zam(25,UnitPrice) as 'Zam %25'
from Products
-----------------------------------------------------------
-- ProductID alan ve ProductName veren fnc_ProductName adýnda bir function kodlayýnýz.

select *--, fnc_ProductName
from [Order Details]
select UnitPrice, UnitsInStock from Products where ProductID=11
select ProductName from Products where ProductID=11

go
create function fnc_ProductName
(
@productId int
)
returns nvarchar(250)
as
begin
return (select ProductName from Products where ProductID=@productId)
end
go

select dbo.fnc_ProductName(11) -- Queso Cabrales

select
OrderID,ProductID,
dbo.fnc_ProductName(ProductID) as 'Product Name',
UnitPrice, dbo.fnc_Zam(15,UnitPrice) as 'Zam = %15'
from [Order Details]
-----------------------------------------------------------
-- Her bir sipariþ için Order Details tablosunda ürün satýþ bilgilerini (OrderId,ProductId,ProductName,Quantity) getiren ve Sipariþ Tarihini (Order Date) getiren yapýyý fnc_GetOrderDate adýnda function içinde kodlayýnýz.

-- OrderDate içn function yapýlacak aþaðýda.

select *from Orders

select OrderDate from Orders where OrderID=10248

go
create function fnc_GetOrderDate(@orderId int)
returns datetime
as
begin
return (select OrderDate from Orders where OrderID=@orderId)
end
go

select OrderID,ProductID,
dbo.fnc_ProductName(ProductID) as 'ProductName',
Quantity,
dbo.fnc_GetOrderDate(OrderID) as 'OrderDate'
from [Order Details]
