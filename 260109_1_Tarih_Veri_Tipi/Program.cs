using System.Data;

namespace _260109_1_Tarih_Veri_Tipi
{
    internal class Program
    {
        static void Main(string[] args)
        {
            // Tarih veri tipi:
            int sayi = 90;
            string metin = "Merhaba";

            // 09.01.2026
            DateTime tarih= DateTime.Now;  // Şimdiki zamanın tarihini verir.

            //DateTime tarih1= 09.01.2026;  // Bu yazım yanlıştır. Çünkü 09 bir sayıdır. '09.' ise bir ondalık sayıdır. Bu şekilde eklenerek formu tamamen değişir.

            DateTime xTarih = new DateTime();  // Nesne => İlerleyen zamanlarda işlenecek. 


			Console.WriteLine("Şu anın bütün ayrıntısını verecek şekilde tarih bilgisi:" + tarih);
			Console.WriteLine("Yıl:" + tarih.Year);
			Console.WriteLine("Ay:" + tarih.Month);
			Console.WriteLine("Gün:" + tarih.Day);
			Console.WriteLine("Saat:" + tarih.Hour);
			Console.WriteLine("Dakika:" + tarih.Minute);
			Console.WriteLine("Saniye:" + tarih.Second);
            Console.WriteLine("Yılın günü:" + tarih.DayOfYear);
            Console.WriteLine("Haftanın günü:" + tarih.DayOfWeek);

            // Ay-Gün-Yıl => İngiliz
            // Gün-Ay-Yıl => Türkiye

		}
	}
}
