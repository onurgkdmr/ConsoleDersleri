namespace _260123_6_while_ornek2
{
    internal class Program
    {
        static void Main(string[] args)
        {
            /*
            1) 1-100 (1 ve 100 dahil) arasındaki sayıları ekrana yazın ve toplamlarını hesaplayınız.
            2) 55-255 (55 ve 255 dahil) arasındaki 5 in katları olan sayıları ekrana yazdırın ve toplamlarını hesaplayınız.
            3) 500 den 0 a doğru 13 ün katları olan sayıları ekranda yazınız (tersten sayım olacak.).
            4) 1-10000 arasındaki asal sayıların toplamını hesaplayınız (zor soru).
            */

            // SORU-1:

            int sayi = 1;
			int toplam = 0;
            
            while (sayi<=100)
            {
                Console.WriteLine(sayi);
                sayi++;
                toplam += sayi;
            }
            
            Console.WriteLine("1-100 arasındaki sayıların toplamı:" + toplam);

            Console.WriteLine("--------------------------------------------");

            // SORU-2:

            int sayi1 = 55;
            int toplam1 = 0;

            while (sayi1 <= 255)
            {
                if (sayi1%5==0)
                {
                    Console.WriteLine(sayi1);
                    toplam1 += sayi1;
                }
				sayi1++;
			}

            Console.WriteLine("5-255 arasındaki 5'in katı olan sayıların toplamı:"+toplam1);

			Console.WriteLine("--------------------------------------------");

			// SORU-3:

			int sayi5 = 500;
            while (sayi5 > 0)
            {
                if (sayi5%13==0)
                {
                    Console.WriteLine(sayi5);
                }
                sayi5--;
            }

            // SORU-4:

            
		
			
		}
	}
}
