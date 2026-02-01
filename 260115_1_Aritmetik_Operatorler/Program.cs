namespace _260115_1_Aritmetik_Operatorler
{
    internal class Program
    {
        static void Main(string[] args)
        {
            /*
              
             Operatörler programlama dillerinde belirli işlemleri gerçekleştirmek için kullanılan sembollerdir.
            1) Aritmetik Operatörler
            2) Karşılaştırma Operatörleri
            3) Atama Operatörleri
            4) Mantıksal Operatörler
   
            */

            // 1) Aritmetik Operatörler:  + (Toplama), - (Çıkartma), * (Çarpma), / (Bölme), % (Mod alma).

            int sayi1 = 57;
			int sayi2 = 25;
            
            int topla=sayi1 + sayi2;
            int carp = sayi1 * sayi2;
            int bol = sayi1 / sayi2;
            int cikart = sayi1 - sayi2;

            // Bunlar bilinen işlemlerdir. Peki mod alma işlemi nasıl yapılır?

            // % => Bir sayının başka bir sayıya bölünmesiyle oluşan kalan değeri verir.

            int modAl = sayi1 % sayi2;  // 57'yi 25'e böldüğümüzde kalan 7'dir.

            Console.WriteLine("Toplam:" + topla);
			Console.WriteLine("Çarpma:" + carp);
			Console.WriteLine("Bölme:" + bol);
			Console.WriteLine("Çıkartma:" + cikart);
            Console.WriteLine("Mod Alma:" + modAl);


		}
	}
}
