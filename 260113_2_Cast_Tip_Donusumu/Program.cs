namespace _260113_2_Cast_Tip_Donusumu
{
    internal class Program
    {
        static void Main(string[] args)
        {
            /*
            
            Convert => Bütün tipler arası dönüşüm olur.
            Parse => String olanı diğer tiplere dönüştürür.
            Cast => Sayısal tipler arası dönüşümü sağlar.
            
            */

            int sayi1 = 950;
            int sayi2 = 150;

            int toplam = sayi1 + sayi2;
            Console.WriteLine("İki sayının toplamı:" + toplam);

            int bolme1 = sayi1 / sayi2;  // Cevap=6 olacaktır. Tam sayıların birbirine bölümü yine tam sayı çıkar.
            double bolme2 = sayi1 / sayi2; // Cevap=6 olacaktır. 
            double bolme3 = (double)sayi1 / sayi2;  // Cevap=6,3333333333. Çünkü Cast tip dönüşümü uygulandı ve sonuç tam olarak ekrana yazdırıldı.
            double bolme4 = Convert.ToDouble(sayi1) / sayi2;  // Cevap=6,3333333. Çünkü Convert tip dönüşümü sağlandı ve sonuç tam olarak ekrana yazdırıldı.

            Console.WriteLine("1. sayıyı 2. sayıya böldüğümüzde:" + bolme1);
            Console.WriteLine("1. sayıyı 2. sayıya böldüğümüzde:" + bolme2);
			Console.WriteLine("1. sayıyı 2. sayıya böldüğümüzde (Cast ile):" + bolme3);
			Console.WriteLine("1. sayıyı 2. sayıya böldüğümüzde (Convert ile):" + bolme4);

            int sayiBolmeTam = (int)bolme4;
            Console.WriteLine("Bölme sonucu tam sayı Cast:" + sayiBolmeTam);
		}
	}
}
