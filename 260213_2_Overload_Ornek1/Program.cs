namespace _260213_2_Overload_Ornek1
{
	internal class Program
	{
		static void Main(string[] args)
		{
			//Kullanıcıdan alınan 2 sayı için DortIslem() adında method ile kodlayarak alınız
			/*
			 
			 1-Bu 2 sayının toplamını DortIslem() adında method ile hesaplayınız?
			 2-Bu 2 sayının çarpımını DortIslem() adında method ile hesaplayınız?
			 3-Bu 2 sayının farkını DortIslem() adında method ile hesaplayınız?
			 4-Büyük sayının küçük sayıya bölümünde kalanı veren DortIslem() adında method ile kodlayınız?
			 5-Büyük sayının küçük sayıya bölümünden bölümü veren DortIslem() adında method ile kodlayınız?

			 */

			short s1 = DortIslem();
			short s2 = DortIslem();
			DortIslem("2 sayının toplamı:" + DortIslem((int)s1,(int)s2));
			DortIslem("2 sayının çarpımı:" + DortIslem((long)s1,(long)s2));
			DortIslem("2 sayının farkı:" + DortIslem(s1, s2));
			DortIslem("Büyük sayının küçük sayıya bölümünden kalan:" + DortIslem((double)s1,(double)s2));
			DortIslem("Büyük sayının küçük sayıya bölünmesi ile çıkan sonuç:" + DortIslem((decimal)s1,(decimal)s2));


		}

		/// <summary>
		/// Kullanıcının girdiği sayıyı short tipinde verir.
		/// </summary>
		/// <returns></returns>
		static short DortIslem()
		{
			Console.WriteLine("Sayı giriniz:");
			short sayi = Convert.ToInt16(Console.ReadLine());
			return sayi;
		}

		/// <summary>
		/// Ekrana girilen metni verir.
		/// </summary>
		/// <param name="metin"></param>
		static void DortIslem(string metin)
		{
			Console.WriteLine(metin);
		}

		// SORU-1:

		/// <summary>
		/// 2 sayının toplamını int tipinde verir.
		/// </summary>
		/// <param name="sayi1"></param>
		/// <param name="sayi2"></param>
		/// <returns></returns>
		static int DortIslem(int sayi1, int sayi2)
		{
			int toplam = sayi1 + sayi2;
			return toplam;
		}

		// SORU-2:

		/// <summary>
		/// 2 sayının çarpımını long tipinde verir.
		/// </summary>
		/// <param name="sayi1"></param>
		/// <param name="sayi2"></param>
		/// <returns></returns>
		static long DortIslem(long sayi1, long sayi2)
		{
			long carpim = sayi1 * sayi2;
			return carpim;
		}

		// SORU-3:

		/// <summary>
		/// 2 sayının farkını long tipinde verir.
		/// </summary>
		/// <param name="sayi1"></param>
		/// <param name="sayi2"></param>
		/// <returns></returns>
		static long DortIslem(short sayi1,short sayi2)
		{
			long fark;
			if (sayi1 > sayi2)
			{
				fark = sayi1 - sayi2;
			}
			else
			{
				fark = sayi2 - sayi1;
			}
			return fark;
		}

		// SORU-4:

		/// <summary>
		/// Büyük sayının küçük sayıya bölümünden kalan sonucu double tipinde verir.
		/// </summary>
		/// <param name="sayi1"></param>
		/// <param name="sayi2"></param>
		/// <returns></returns>
		static double DortIslem(double sayi1,double sayi2)
		{
			double kalan;
			if (sayi1>sayi2)
			{
				kalan = sayi1 % sayi2;
			}
			else
			{
				kalan = sayi2 % sayi1;
			}
			return kalan;
		}

		// SORU-5:

		/// <summary>
		/// Büyük sayının küçük sayıya bölünmesiyle çıkan sonucu decimal tipinde verir.
		/// </summary>
		/// <param name="sayi1"></param>
		/// <param name="sayi2"></param>
		/// <returns></returns>
		static decimal DortIslem(decimal sayi1,decimal sayi2)
		{
			decimal bolme;
			if (sayi1 > sayi2)
			{
				bolme = sayi1 / sayi2;
			}
			else
			{
				bolme = sayi2 / sayi1;
			}
			return bolme;
		}


	}
}
