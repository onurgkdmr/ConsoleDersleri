namespace _260109_3_Diger_Data_Tipleri
{
    internal class Program
    {
        static void Main(string[] args)
        {
            // Object => Nesne
            // var => variable (değişken)

            // Object, bütün veri tiplerinin atasıdır.

            object deger1 = 5;  // Sayı
            object deger2 = "Merhaba";  // Metin
            object deger3 = 4.5;  // Ondalık sayı
            object deger4 = true;  // Mantıksal veri tipi
            object deger5 = DateTime.Now;  // Tarih veri tipi
            object deger6 = 'A';  // Metinsel değişken (karakter)

            Console.WriteLine(deger1);
            Console.WriteLine(deger1.GetType());  // int
			Console.WriteLine(deger3.GetType());  // double
			Console.WriteLine(deger5.GetType());  // DateTime

            int sayi1= (int)deger1*9;
            double sayi2 = (double)deger3;
            Console.WriteLine("Object olan data int olarak kullanıldı:"+sayi1);

            // Object tanımlarken eğer tip olarak görülen değere eşitlenirse rol verme (cast) işlemi yapılmalıdır (sayı1, sayi2 için yapılan işlem).

            // -------------------------------------------------------------------------------------------------------------------------------------

            // var => İki programlama dili ya da bir programlama dili ile veri tabanı arasındaki büyük data alışverişlerini sağlamak için kullanılan veri (data) tipidir.

            var v1 = 10;  // int
			var v2 = "Merhaba";  // string
			var v3 = 456.78m;  // decimal
			var v4 = false;  // bool
			var v5 = '4';  // char

            Console.WriteLine("var için sonuç:"+v1*9);  // Object gibi rol verme (cast) işlemine gerek yoktur.
		}
	}
}
