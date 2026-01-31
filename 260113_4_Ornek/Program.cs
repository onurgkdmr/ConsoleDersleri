namespace _260113_4_Ornek
{
    internal class Program
    {
        static void Main(string[] args)
        {
            // Kullanıcıdan alınan 3 adet sayı için;
            // 1) 1. ve 2. sayıların toplamı
            // 2) 1. ve 3. sayıların toplamı
            // 3) 2. ve 3. sayıların toplamı
            // 4) 1. sayının 2. sayıya bölümü
            // 5) 1. sayının 3. sayıya bölümü
            // 6) 2. ve 3. sayıların toplamının 1. sayıya bölünmesi
            // 7) 1. ve 2. sayıların çarpımının 3. sayıya bölünmesi 
            // Yukarıdaki 7 soruyu hesaplayan kodu ayrı ayrı kodlayınız ve sonuçlarını ekranda gösteriniz.

            // SORU-1:

            Console.WriteLine("1. Sayıyı Giriniz:");
            int sayi1 = Convert.ToInt32(Console.ReadLine());

			Console.WriteLine("2. Sayıyı Giriniz:");
            int sayi2 = Convert.ToInt32(Console.ReadLine());

			Console.WriteLine("3. Sayıyı Giriniz:");
			int sayi3 = Convert.ToInt32(Console.ReadLine());

            int toplam1 = sayi1 + sayi2;
            Console.WriteLine("1. ve 2. sayıların toplamı:" + toplam1);
            
            // SORU-2:

            int toplam2 = sayi1 + sayi3;
			Console.WriteLine("1. ve 3. sayıların toplamı:" + toplam2);
            
            // SORU-3:

            int toplam3 = sayi2 + sayi3;
			Console.WriteLine("2. ve 3. sayıların toplamı:" + toplam3);

            // SORU-4:

            double bolme1 = (double)sayi1 / sayi2;
			Console.WriteLine("1. sayının 2. sayıya bölümü:" + bolme1);

			// SORU-5:

			double bolme2 = (double)sayi1 / sayi3;
			Console.WriteLine("1. sayının 3. sayıya bölümü:" + bolme2);

            // SORU-6:

            double bolme3 = (sayi2 + sayi3) / (double)sayi1;
			Console.WriteLine("2. ve 3. sayıların toplamının 2. sayıya bölümü:" + bolme3);

            // SORU-7;

            double bolme4 = sayi1 * sayi2 / (double)sayi3;
			Console.WriteLine("1. ve 2. sayıların çarpımının 3. sayıya bölümü:" + bolme4);


		}
	}
}
