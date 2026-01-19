namespace _260116_2_Odevler
{
    internal class Program
    {
        static void Main(string[] args)
        {
			// Kullanıcıdan alınan 5 sayı için aşağıdaki işlemleri yapınız ve sonuçları ekranda gösteriniz.

			/*
            1) 5 sayıdan 2'nin katı olanlar için True, olmayanlar için False verecek şekilde bir işlem düşünüp kodlayınız.
            2) 1.sayıdan 5.sayıya kadar olan sayıların toplamını bulunuz.
            3) 1.sayıya 5 ekleyin, 2.sayıdan -10 çıkartın, 3.sayıyı da 5 ile çarparak işlemlerin sonucunu ekranda gösteriniz.
            NOT: Yeni bir değişken tanımlamadan 3.soruyu yapınız.
            4) 5 sayının toplam sonucu 9,11,13 e ayrı ayrı bölündüğünü True, False şeklinde hesaplayınız.
            5) 1., 2., 3. sayıların toplamını, 4.sayıdan 5.sayı çıkartılınca kalan sonuca bölerek sonucu ekranda gösteriniz.
             */

			Console.WriteLine("1. sayıyı giriniz:");
			int sayi1 = Convert.ToInt32(Console.ReadLine());

			Console.WriteLine("2. sayıyı giriniz:");
			int sayi2 = Convert.ToInt32(Console.ReadLine());

			Console.WriteLine("3. sayıyı giriniz:");
			int sayi3 = Convert.ToInt32(Console.ReadLine());

			Console.WriteLine("4. sayıyı giriniz:");
			int sayi4 = Convert.ToInt32(Console.ReadLine());

			Console.WriteLine("5. sayıyı giriniz:");
			int sayi5 = Convert.ToInt32(Console.ReadLine());


			// SORU-1:
			bool s1=sayi1% 2 == 0;
			bool s2 = sayi2 % 2 == 0;
			bool s3 = sayi3 % 2 == 0;
			bool s4 = sayi4 % 2 == 0;
			bool s5 = sayi5 % 2 == 0;
			Console.WriteLine("1. sayı 2'nin katı mıdır?:" + s1);
			Console.WriteLine("2. sayı 2'nin katı mıdır?:" + s2);
			Console.WriteLine("3. sayı 2'nin katı mıdır?:" + s3);
			Console.WriteLine("4. sayı 2'nin katı mıdır?:" + s4);
			Console.WriteLine("5. sayı 2'nin katı mıdır?:" + s5);


			// SORU-2:
			int toplam1 = sayi1 + sayi2 + sayi3 + sayi4 + sayi5;
			Console.WriteLine("1. sayıdan 5. sayıya kadar olan sayıların toplamı:" + toplam1);


			// SORU-3;
			sayi1 += 5;
			Console.WriteLine("1. sayıya 5 eklenmiş hali:" + sayi1);

			sayi2 -= 10;
			Console.WriteLine("2. sayıdan 10 çıkartılmış hali:" + sayi2);

			sayi3 *= 5;
			Console.WriteLine("3. sayının 5 ile çarpılmış hali:" + sayi3);


			// SORU-4;
			int toplam2= sayi1 + sayi2 + sayi3 + sayi4 + sayi5;

			bool sonuc1 = toplam2 % 9 == 0;
			Console.WriteLine("toplam2 değeri 9'un katı mıdır?, Kalan:" + toplam2 % 9+ "=>" +sonuc1);

			bool sonuc2 = toplam2 % 11 == 0;
			Console.WriteLine("toplam2 değeri 11'in katı mıdır?, Kalan:" + toplam2 % 11+ "=>" +sonuc2);

			bool sonuc3 = toplam2 % 13 == 0;
			Console.WriteLine("toplam2 değeri 13'ün katı mıdır?, Kalan:" + toplam2 % 13+ "=>" +sonuc3);


			// SORU-5:
			double sonuc4 = ((double)(sayi1 + sayi2 + sayi3))/(sayi4-sayi5);
			Console.WriteLine("1.,2. ve 3. sayıların toplamının 4. sayıdan 5. sayının çıkartılmış haline bölünmesi sonucu:" + sonuc4);


		}
	}
}
