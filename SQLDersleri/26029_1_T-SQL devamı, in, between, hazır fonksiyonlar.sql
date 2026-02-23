/*
 Operatörler
 <,>,<=,>=,!=,=,+,-,*,/,%=> c# ta olduğu gibi kullanılır.
 
 ------------------------------------------------------------
 Buradan devam ediliyor.

 and,or=> and (&&)ve or(||) c# taki yapılar ile aynı şekilde kullanılır 
 is nul,is not null=>??
 in, between =>??
 like
 */

 use Northwind

 /*

 || => or 
	True or True => True
	True or Talse => True
	False or True => True
	False or False => False

 && => and
	True and True => True
	True and False => False
	False and True => False
	False and False => False

 */

 select *from Customers where Country='Germany' and City='Berlin'
 select *from Customers where Country='Germany' or Country='Mexico' or City='Sao Paulo'
 
 -- Birden fazla or kullanmak yerine in kullanılır:
 select *from Customers where Country in ('Germany','Mexico', 'Sao Paulo') -- in içerenleri gösterir.
 select *from Customers where Country not in ('Germany','Mexico', 'Brazil') -- not in içermeyenleri, olmayanları gösterir.

 -- is null, is not null
 -- null => boş
 -- empty (' ') => boş ama klavyeden space tuşu ile boşluk verlmiş.
 -- '' => boş

 select *from Customers where Region=''
 select *from Customers where Region is null -- null olanları getirir. Doğal olarak SQL ilk data eklenirken müdahele edilmeyen data null olarak gelir.
 select *from Customers where Region is not null -- null olmayanları getirir. Buna (' ') da dahildir.

 -- between => Aralık filtrelemek için kullanılır.
 select *from Products
 select *from Products where UnitsInStock>10 and UnitsInStock<15 -- 4 adet sonuç çıkartıyor.
 select *from Products where UnitsInStock>=10 and UnitsInStock<=15 -- 10 adet sonuç çıkartıyor. (10 ve 15 dahil)
 select *from Products where UnitsInStock between 10 and 15 -- 10 ve 15'i dahil ederek aralık vermektedir. Yine 10 adet sonuç verir.

 -- TR için ; Gün - Ay - Yıl => SQL içinde bu şekilde tarih sorgulaması yapılamaz. İngiliz tarih formatına göre yapılabilir.
 select *from Orders where OrderDate>='01.01.1996' and OrderDate<='12.31.1996' -- İngiliz tarih formatına göre ; Ay - Gün - Yıl olarak verilir.
 
 select *from Orders where OrderDate between '01.01.1996' and '12.31.1996'
 -- **********************************************************************************
 
 -- like => arama yapmak için kullanılır.
 select *from Customers where ContactName like 'Maria' -- like ile beraber mutlaka % işareti kullanılmalıdır. Aksi halde eşittir (=) gibi çalışır.
 
 select *from Customers where ContactName='Maria' -- % işareti olmadan kullanılan like bunun gibi çalışır.

 select *from Customers where ContactName like '%Maria%' -- % işareti hem başında hem sonunda kullanılıyorsa Maria geçen cümle ortası, başı veya sonu farketmeksizin neresinde Maria varsa listeler.

 select *from Customers where ContactName like 'Mar%' -- İlk 3 harfi Mar olan ContactName dataları listeler.

 -- 1996 yılında olan siparişleri like ile getirin.
 select *from Orders where OrderDate like '%1996%'

 select *from Customers where ContactName like '%Mar' -- Son 3 harfi Mar/mAR/MAR/.. olan ContactName dataları listeler.

 -- Arama içinde _ kullanılması:
 select *from Products where ProductName like 'c_a%' -- Her bir alt-tire (_) bilinmeyen bir karaktere eşittir.
 -- Alt-tire (_) aynı zamanda karakter için zorunluluk getirir. Yani _ varsa kesin karakter gelecektir.
 select *from Products where ProductName like '_o_to%' -- 1. harfi bilinmeyen, 2. harfi o olan, 3. harfi bilinmeyen, 4. ve 5. harfi to olan ve sonunun ne ile bittiği önemsiz olan dataları listeler.


