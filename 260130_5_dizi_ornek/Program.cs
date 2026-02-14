namespace _260130_5_dizi_ornek
{
    internal class Program
    {
        static void Main(string[] args)
        {
			// Kullanıcıdan 11 sayı alınız. Girilen 11 sayıyı listelerken çift olan sayıların sağında ÇİFT, tek olan sayıların sağında TEK yazısı yazdırınız.
			/*

			45-TEK
			60-ÇİFT
			15-TEK
			11-TEK

			*/

			int[] sayilar = new int[11];
			int elemanSayisi = sayilar.Count();

			for (int i = 0; i < elemanSayisi; i++)
			{
				Console.WriteLine(i + 1 + ". elemanı giriniz:");
				//sayilar[i] = Convert.ToInt32(Console.ReadLine());  // Uzun yapısı aşağıdaki gibidir:
				int sayi = Convert.ToInt32(Console.ReadLine());
				sayilar[i] = sayi;
			}

			for (int i = 0; i < sayilar.Count(); i++)
			{
				if (sayilar[i] % 2 == 0)
				{
					Console.WriteLine(i + 1 + ". eleman:" + sayilar[i] + "=> ÇİFT");
				}
				else
				{
					Console.WriteLine(i + 1 + ". eleman:" + sayilar[i] + "=> TEK");
				}

				// Ternary ile çözümü:

				// string yaz = sayilar[i] % 2 == 0 ? "-ÇİFT" : "-TEK";
				// Console.WriteLine(sayilar[i] + yaz);
			}
			



		}
	}
}
