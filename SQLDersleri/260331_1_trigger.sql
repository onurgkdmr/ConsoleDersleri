--***************************************
-- 31 Mart 2026 SQL Dersleri
--***************************************
-- Trigger => Tetikleyici

/*

 Bir tabloya data eklerken, güncellerken ya da silerken o tabloda SQL tarafýnda baþka

*/

use NorthwindDB

select *from Products

go
create trigger trg_DogumGunu
/*
on [table name] -- tablo adý
[before | after] -- gerçekleþmesini istediðiniz iþlem öncesi/sonrasý
{insert | update | delete} -- iþlem adý. Tabloda hangi iþlem olurken çalýþmasýný isteniyorsa o yazýlýr.
*/
on Employees -- trigger'ýn çalýþacaðý tablo
after insert -- trigger'ýn insert iþleminden sonra çalýþacaðýný gösterir.
as -- kod bloðu baþlangýcý
begin
--*************************************************************************
declare @dogumGunu datetime
declare @id int
select @dogumGunu=BirthDate,@id=EmployeeID from inserted
update Employees set sayac=365 where EmployeeID=@id
--*************************************************************************
end
go
---------------------------------------------------------------------------------

select *from Employees

insert into Employees
values('snippe','Angela','Sales','Ms','02.03.1965','5.5.1994','test','California',null,'ad-654','USA','544',655,null,'test',2,null,null)
/*
 Execute edince aþaðýdaki 2 mesajý vermektedir:

(1 row affected) --> Insert için

(1 row affected) --> Trigger için

Completion time: 2026-03-31T19:54:14.9163294+03:00
*/

select *from Orders
select *from [Order Details]
select *from Products

select *from [Order Details] where OrderID=10332
select *from Products where ProductID in(18,42,47,2)
insert into [Order Details] (OrderID,ProductID,UnitPrice,Quantity,Discount) 
values (10332,2,19,20,0)

--**************************************************************************

go
create trigger trg_StokKontrol
on [Order Details]
after insert
as
begin
declare @satilanStok int
declare @productId int

select @satilanStok=Quantity,@productId=ProductID from inserted

declare @mevcutStok int = (select UnitsInStock from Products where ProductID=@productId)

if(@mevcutStok>=@satilanStok)
	begin
	update Products set UnitsInStock=UnitsInStock-@satilanStok where ProductID=@productId
	end
else
	begin
	print 'Product tablosunda yeterli stoðunuz yok.'
	end
end
go

insert into [Order Details] (OrderID,ProductID,UnitPrice,Quantity,Discount) 
values (10332,6,19,21,0)

select *from [Order Details] where OrderID=10332
select *from Products where ProductID in (18,42,47,2,3,6,10,13) --120

insert into [Order Details] (OrderID,ProductID,UnitPrice,Quantity,Discount)
values (10332,10,19,1,0,10)

insert into [Order Details] (OrderID,ProductID,UnitPrice,Quantity,Discount)
values (10332,13,19,30,0,10) -- trigger before özelliði ile verilmesi gerekir. O zaman stok istenilen þekilde ayarlanabilir ve fazla stok verilmez.

-- [Order Details] tablosuna Insert yapýlýrken discount verildiðinde verilen fiyat üzerinde discount kadar indirim yapýlarak yeni fiyat UnitPrice kolonunda gösteriniz.
-- trg_IndirimUygula

select *from [Order Details]

go
create trigger trg_IndirimUygula
on [Order Details]
after insert
as
begin
declare @indirimOrani decimal(5,2)
declare @satisFiyati decimal(18,2)
declare @productId int
declare @orderId int

select @indirimOrani=Discount, @satisFiyati=UnitPrice, @productId=ProductID,@orderId=OrderID from inserted

update [Order Details] set UnitPrice=UnitPrice-Unitprice*Discount where OrderID=@orderId and ProductID=@productId

end
go

select *from [Order Details] where OrderID=10248
select *from Products where ProductID in (11,42,72,2)

insert into [Order Details] (OrderID,ProductID,UnitPrice,Quantity,Discount)
values (10248,2,19,7,0.15)

/*
 1 adet insert için 2 adet trigger için mesaj verdi.
(1 row affected)

(1 row affected)

(1 row affected)

Completion time: 2026-03-31T21:06:30.7680056+03:00
*/
