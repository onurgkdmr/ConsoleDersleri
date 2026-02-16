using System.Collections;
using System.Collections.ObjectModel;

namespace _260205_3_collection_ornek1
{
    internal class Program
    {
        static void Main(string[] args)
        {
			//kullanıcıdan alınan adı,soyadı, doğum tarihi, cinsiyet, medeni durum, aylık gelir gibi işlemleri bir ArrayList içinde kullanarak kullanıcıya bir kart oluşturup
			//kullanıcıya gösteriniz.
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
		

			for (int i = 0; i < kartItem.Count; i++)
			{
			    if (kart[i] == "MEDENİ DURUM")
			    {
			        if (kartItem[i] == "1")
			        {
			            Console.WriteLine(kart[i] + ":Bekar");
			        }
			        else
			        {
			            Console.WriteLine(kart[i] + ":Evli");
			        }
			    }
			    else
			    {
			    Console.WriteLine(kart[i] + ":" + kartItem[i]);
			    }
			}
			
			//bu soru eğer 5 den fazla kişi kartı istenseydi nasıl bir yol izlenirdi, çözünüz? (Konu7' de cevabı var)

		}
	}
}
