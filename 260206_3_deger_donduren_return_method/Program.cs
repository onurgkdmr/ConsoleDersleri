namespace _260206_3_deger_donduren_return_method
{
    internal class Program
    {
        static void Main(string[] args)
        {
            // method => metot
            // function => fonksiyon
            // parametre => dışarıdan girilen değer

            // ****************************************

            // Değer döndüren return method:

            // 1) Method adından önce var dışında bir değişken adı (byte, sbyte, short, ushort, int, uint, long, ulong, float, double, decimal, DateTime, bool, object) varsa bu değer
            // döndüren bir method'tur.

            // 2) Değer döndüren method kod içinde kodun bittiğini gösteren return anahtar kelimesi yazılmak zorundadır.

            int s1 = 98, s2 = 2;

            Console.WriteLine(Cizgi());
            Cizgi();

            int deger1 = 90;

            int toplam = Topla(s1, s2); // Topla() işlemi sonucunda int tipinde değer verecektir.
            
            /*
             
            ----------------------- ÖNEMLİ ! ! ! ---------------------------
            Değer döndüren method, işlem sonucunda method adından önce yazılan veri tipinde değer getirir. Bu özellik kod içinde return methodları değişken gibi kullanma kolaylığı
            sağlar.
     
            */

            // int islem1 = ToplaVoid(s1, s2);  => Bu işlem hatalı olur. Çünkü void method değer döndürmez. Başka parametreler kullanıp değer elde edemeyiz.
        }

        static string Cizgi()
        {
            return "----------------------";
        }

        static int Topla(int sayi1,int sayi2) // isimden önce int var. Yani değer döndüren return method.
        {
            int toplam = sayi1 + sayi2;
            Console.WriteLine("2 sayının toplamı:" + toplam);
            return toplam; // int ile belirtilen method return ile min int (daha küçük değer aralığına sahip veri tipleri de yazılabilir.) değer alan değişken, sayı vermelidir.
            // return ile beraber method sonlanır. Bundan dolayı return'un yeri çok önemlidir.
        }

        static void ToplaVoid(int sayi1,int sayi2) // değer döndürmez. Çünkü void içeriyor.
        {
            int toplam = sayi1 + sayi2;
            Console.WriteLine("2 sayının toplamı:" + toplam);
        }
    }
}
