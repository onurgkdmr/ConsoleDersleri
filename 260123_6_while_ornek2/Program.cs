namespace _260123_6_while_ornek2
{
    internal class Program
    {
        static void Main(string[] args)
        {
            /*
            1) 1-100 arasındaki sayıları ekrana yazın ve toplamlarını hesaplayınız.
            2) 55-255 arasındaki 5 in katları olan sayıları ekrana yazdırın ve toplamlarını hesaplayınız.
            3) 500 den 0 a doğru 13 ün katları olan sayıları ekranda yazınız (tersten sayım olacak.).
            4) 1-100 arasındaki asal sayıların toplamını hesaplayınız (zor soru).
            */

            // SORU-1:

            int sayi = 2;
            while (sayi<100)
            {
                Console.WriteLine(sayi);
                sayi++;
            }
			int toplam = 0;
            int sayi1 = 2;
			while (sayi1 < 100)
            {
                toplam += sayi1;
                sayi1++;
            }
            Console.WriteLine("1-100 arasındaki sayıların toplamı:" + toplam);

            // SORU-2:

            int sayi3 = 56;
            while (sayi3 < 255)
            {
                if (sayi3%5==0)
                {
                    Console.WriteLine(sayi3);
                }
				sayi3++;
			}

            int sayi4 = 56;
            int toplam1 = 0;
            while (sayi4<255)
            {   
                if (sayi4%5==0)
                {
					toplam1 += sayi4;
				}
				sayi4++;
			}
            Console.WriteLine("5-255 arasındaki 5'in katı olan sayıların toplamı:"+toplam1);

            // SORU-3:

            int sayi5 = 499;
            while (sayi5 > 0)
            {
                if (sayi5%13==0)
                {
                    Console.WriteLine(sayi5);
                }
                sayi5--;
            }

            // SORU-4:

            int sayi6 = 2;
            int sayi7 = 2;
            
            while (sayi6 < 100)
            {
				while (sayi7 < sayi6)
                {
                    if (sayi6 % sayi7 == 0)
					{
						Console.WriteLine("Asal değildir");
					}
                    else
                    {
                        Console.WriteLine(sayi6);
                    }
                    sayi7++;
				}
			}
		}
	}
}
