using System.Collections;

namespace _260210_1_Collection_Odev_Cozumu
{
	internal class Program
	{
		static void Main(string[] args)
		{
			//kullanıcıdan alınan adı,soyadı, doğum tarihi, cinsiyet, medeni durum, aylık gelir gibi işlemleri bir ArrayList içinde kullanarak kullanıcıya bir kart oluşturup kullanıcıya gösteriniz
			/*
			 AD:
			SOYADI:
			DOĞUM TARİHİ:
			CİNSİYET:
			MEDENİ DURUM:
			AYLIK GELİR:
			 */

			string[] kart = { "AD", "SOYAD", "DOĞUM TARİHİ", "CİNSİYET", "MEDENİ DURUM", "AYLIK GELİR" };

			ArrayList kartItem = new ArrayList();
			Console.WriteLine("Kaç kişi gireceksiniz?");

			int kisiSayisi = Convert.ToInt32(Console.ReadLine());

			for (int i = 0; i < kisiSayisi; i++)
			{
				Console.WriteLine(i + 1 + ".Kişi Bilgileri");

				foreach (var item in kart)
				{
					if (item == "MEDENİ DURUM")
					{
						Console.WriteLine("Bekar 1,evli için 0 yazınız");
					}
					else
					{
						Console.WriteLine(item + " giriniz?");
					}
					kartItem.Add(Console.ReadLine());
				}
			}
			Console.WriteLine("*********************************");
			Console.WriteLine("Kişi Kartları");
			int sayac = 0;
			for (int i = 0; i < kartItem.Count; i++)
			{

				Console.WriteLine(kart[sayac] + ":" + kartItem[i]);
				sayac++;

				if (kart.Length == (i + 1))
				{
					sayac = 0;
				}

				#region Uzun çözüm 

				/*
				if (sayac == 0)
				{
					Console.WriteLine(kart[sayac] + ":" + kartItem[i]);
					sayac++;
				}
				else if (sayac == 1)
				{
					Console.WriteLine(kart[sayac] + ":" + kartItem[i]);
					sayac++;
				}
				else if (sayac == 2)
				{
					Console.WriteLine(kart[sayac] + ":" + kartItem[i]);
					sayac++;
				}
				else if (sayac == 3)
				{
					Console.WriteLine(kart[sayac] + ":" + kartItem[i]);
					sayac++;
				}
				else if (sayac == 4)
				{
					Console.WriteLine(kart[sayac] + ":" + kartItem[i]);
					sayac++;
				}
				else if (sayac == 5)
				{
					Console.WriteLine(kart[sayac] + ":" + kartItem[i]);
					sayac = 0;
				}
				*/

				#endregion
			}
		}
	}
}
