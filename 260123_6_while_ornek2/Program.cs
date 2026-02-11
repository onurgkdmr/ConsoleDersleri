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

            int sayi2 = 2;

            // Bir sayı sadece kendisine ve 1'e bölünüyorsa asal sayıdır.

            int toplamAsalSayilar = 0;

            while (sayi2<10000)
            {
                // 1,2,3,4,.....,9999
                // 1 asal değildir. Çünkü asal sayıların iki adet çarpanı olur. 1'in tek çarpanı kendisidir.
                // 2 asal sayıdır.
                // 3 => 2'ye bölünmez. Asal sayıdır.
                // 4 => 3,2 (2'ye bölüneceği için asal sayı değildir.)
                // 5 => 2,3,4. Asal sayıdır.
                // sayi2 => 2,3,4,5,6,7,8,9,10
                int bolenSayi = 2;
                bool asalMi = true;

                while (sayi2>bolenSayi)
                {
           
                    if (sayi2%bolenSayi==0) // Eğer sayi2 bolenSayi'ya tam bölünüyorsa bu sayi2'nin asal olmadığını ispatlar.  
                    {
                        asalMi = false;
                        break; // İçinde bulunduğu döngüyü sonlandırır. sayi2 > bolenSayi koşullu döngüyü sonlandırır. Diğer döngüye devam eder.
                    }
                    bolenSayi++;
                }

                if (asalMi)
                {
                    toplamAsalSayilar = toplamAsalSayilar + sayi2;
                    Console.Write(sayi2 + ",");
                }
                sayi2++;
            }

            Console.WriteLine();
            Console.WriteLine("Toplam Asal Sayılar:" + toplamAsalSayilar);
		
			
		}
	}
}
