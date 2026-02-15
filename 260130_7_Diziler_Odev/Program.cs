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

			int[] sayilarCift = new int[200];
			int[] sayilarTek = new int[200];
			
			int elemanSayisiCift = sayilarCift.Length;
			int indexCift = 0;
			int indexTek = 0;

			for (int i = 0; i < elemanSayisiCift; i++)
			{
				int sayi = rastgele.Next();
				
				if (sayi % 2 == 0)
				{
					Console.WriteLine(sayi+ "=>" + "ÇİFT SAYI");
					sayilarCift[indexCift] = sayi;
					indexCift++;
				}
				else
				{
					Console.WriteLine(sayi + " => TEK SAYI");
					sayilarTek[indexTek] = sayi;
					indexTek++;
				}
			}

			Console.WriteLine("---------------------------");

			Console.WriteLine("Çift Sayılar:");
	
			for (int i = 0; i < indexCift; i++)
			{
				Console.WriteLine(sayilarCift[i]);
			}
			
			Console.WriteLine();
			
			Console.WriteLine("Tek Sayılar:");
			

			for (int i = 0; i < indexTek; i++)
			{
				Console.WriteLine(sayilarTek[i]);
			}


			Console.WriteLine("---------------------------");



			// SORU-2:

			int elemanSayisi = 5;
			int[] dizi = new int[elemanSayisi];
			//int[] dizi = { 11, 3, 9, 5, 2 };

			for (int i = 0; i < dizi.Length; i++)
			{
				Console.WriteLine(i + 1 + ". sayıyı giriniz:");
				dizi[i] = Convert.ToInt32(Console.ReadLine());
			}
			//Dizi=>11,3,9,5,2
			for (int i = 0; i < dizi.Count(); i++)
			{
				//dizi[i]=>11

				for (int k = 0; k < dizi.Count(); k++)
				{
					int gecici;
					if (dizi[k] > dizi[i])
					{
						gecici = dizi[k];
						dizi[k] = dizi[i];
						dizi[i] = gecici;
					}

				}
			}


			for (int i = 0; i < dizi.Length; i++)
			{
				Console.Write(dizi[i] + "-");
			}

			Console.WriteLine();

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
				Console.WriteLine(isim[i] + " adlı kişinin maaşını giriniz:");
				maas[i]=Convert.ToDouble(Console.ReadLine());
			}

			for (int i=0; i<calisanSayisi; i++)
			{
				Console.WriteLine(isim[i] + "=>" + maas[i] + "TL");
			}
		}
	}

}
