using System.CodeDom.Compiler;
using System.ComponentModel;
using System.Runtime.InteropServices;

namespace _260130_7_Diziler_Odev
{
	internal class Program
	{
		static void Main(string[] args)
		{

			/*
			1) Rastgele üretilen 200 sayı arasında tek olanları ve çift olanları ayrı ayrı diziler içinde dizi eleman sayısı az/çok olmayacak şekilde oluşturan yapıyı 
			kodlayınız(2 döngü ile işlem yapılıyor)
			2) Kullanıcıdan alınan 5 sayıyı dizi-döngü kullanarak küçükten büyüğe doğru sıralayınız?
			3) Kullanıcıdan bir fabrikadan çalışan sayısı alındıktan sonra çalışanların isimlerini bir bir isteyip(1. personel Ahmet) girilen isimleri aldıktan sonra her bir 
			personelin aldığı maaşı(Ahmet ne kadar maaş alıyor-49000) şeklinde istedikten sonra son olarak her bir isim karşısında isim için girilen maaşı listeleyen(Ahmet-49000) 
			şeklinde veren yapıyı kodlayınız         
			*/

			// SORU-1:

			Random rastgele = new Random();

			int[] sayilar = new int[200];

			int elemanSayisiCift = sayilar.Length;

			for (int i = 0; i < elemanSayisiCift; i++)
			{
				int sayi = rastgele.Next();
				
				if (sayi % 2 == 0)
				{
					Console.WriteLine(sayi+ "=>" + "ÇİFT SAYI");
				}
			}

			Console.WriteLine("---------------------------");

			int elemanSayisiTek = sayilar.Length;
			
			for (int i=0; i<elemanSayisiTek; i++)
			{
				int sayi= rastgele.Next();
				
				if (sayi % 2 != 0)
				{
					Console.WriteLine(sayi + "=>" + "TEK SAYI");
				}
			}

			Console.WriteLine("------------------------");


			// SORU-2:

			int[] sayilar2 = new int[5];
			int elemanSayisi = sayilar2.Length;


			for (int i = 0; i < elemanSayisi; i++)
			{
				Console.WriteLine(i + 1 + ". sayıyı giriniz:");
				sayilar2[i] = Convert.ToInt32(Console.ReadLine());

			}


			for (int i=0; i < elemanSayisi-1; i++)
			{
				for (int j=i+1;  j<elemanSayisi; j++)
				{
					Console.WriteLine(j);
				}
			}



			// SORU-3:

			Console.WriteLine("Çalışan Kişi Sayısını Giriniz:");
			int calisanSayisi=Convert.ToInt32(Console.ReadLine());

			string[] isim = new string[calisanSayisi];
			double[] maas = new double[calisanSayisi];

			for (int i=0; i<calisanSayisi; i++)
			{
				Console.WriteLine(i + 1 + ". kişiyi giriniz:");
				isim[i] = Convert.ToString(Console.ReadLine());
			}

			for (int i=0; i<calisanSayisi; i++)
			{
				Console.WriteLine(i + 1 + ". kişinin maaşını giriniz:");
				maas[i]=Convert.ToDouble(Console.ReadLine());
			}

			for (int i=0; i<calisanSayisi; i++)
			{
				Console.WriteLine(isim[i] + "=>" + maas[i] + "TL");
			}
		}
	}

}
