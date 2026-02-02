namespace _260115_2_Karsilastirma_Operatorleri
{
    internal class Program
    {
        static void Main(string[] args)
        {
			/*
            2) Karşılaştırma operatörleri:
            == (Eşit mi?)
            != (Eşit değil mi?)
            >  (Büyük mü?)
            <  (Küçük mü?)
            >= (Büyük veya eşit mi?)
            <= (Küçük veya eşit mi?) 
             */

			int sayi1 = 45;
			int sayi2 = 30;
            string metin1 = "yazılım";
            DateTime tarih = DateTime.Now;


            bool sonuc = sayi1 == 10;  // Cevap:False (45 değeri 10 değerine eşit değildir.)
            Console.WriteLine("45==10 =>"+sonuc);

            sonuc = sayi1 != sayi2;  // Cevap:True (45 değeri 30 değerine eşit değildir.)
            Console.WriteLine("45!=30 =>"+sonuc);

            Console.WriteLine("10>=5 =>" + (10 >= 5)); // Cevap:True
			Console.WriteLine("10>5 =>" + (10 > 5)); // Cevap:True

            sonuc = metin1 == "software";  // Cevap:False (Mantık olarak yazılımın anlamı sofware olsa da karakter olarak yazılım=software değildir.)
            Console.WriteLine("yazılım==software =>" + sonuc);

            Console.WriteLine("01.01.2026 01:20:00" + tarih + "=>" + (Convert.ToDateTime("01.01.2026 01:20:00") == tarih));


		}
	}
}
