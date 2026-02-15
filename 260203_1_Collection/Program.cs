using System.Collections;

namespace _260203_1_Collection
{
    internal class Program
    {
        static void Main(string[] args)
        {
			//List,Collection,Array, Delegate
			//ArrayList kullanmak için using System.Collections; kütüphanesini en başa eklemeniz gereklidir
			ArrayList arrayList = new ArrayList();

			arrayList.Add("Arı Bilgi");//ArrayList için eleman Add ile eklenir
			arrayList.Add(45);
			arrayList.Add(25.5m);//decimal
			arrayList.Add(true);
			arrayList.Add(DateTime.Now);

			Console.WriteLine("------array List elemanları-------------");
			for (int i = 0; i < arrayList.Count; i++)
			{
				Console.WriteLine(arrayList[i]);
			}
			Console.WriteLine("------eleman SON----");
			ArrayList sayilar = new ArrayList();
			sayilar.Add(87);
			sayilar.Add(23);
			sayilar.Add(54);
			sayilar.Add(5);
			sayilar.Add(4);
			sayilar.Add(1);

			sayilar.Sort();//küçükten büyüğe doğru sıralama yapar
			for (int i = 0; i < sayilar.Count; i++)
			{
				Console.Write(sayilar[i] + "-");
			}
			Console.WriteLine();
			int kapasite = arrayList.Capacity;//kapasite 2 nin üstü şeklinde değer ile artar
											  //
			Console.WriteLine("Kapasite, eleman sayısı değildir:" + kapasite);
			Console.WriteLine("count ile eleman sayısı:" + arrayList.Count);//Count , ArrayList eleman sayısını verir
																			//index nedir??
			Console.WriteLine("index no:" + arrayList.IndexOf("Arı Bilgi"));
			Console.WriteLine("index no:" + arrayList.IndexOf(25.5m));
			Console.WriteLine("45 elemanı var mı:" + arrayList.Contains(45));

			if (arrayList.Contains(45))
			{
				Console.WriteLine("Index numarası:" + arrayList.IndexOf(45));
			}
			Console.WriteLine("------Array List Kopya devam-------------");

			//*************************************************************
			//ArrayList kopyalamak=> Devam edilecek?

			ArrayList newArrayList = new ArrayList(arrayList);//arrayList elemanlarını newArrayList içine kopyalar/atar

			for (int i = 0; i < newArrayList.Count; i++)
			{
				Console.WriteLine(newArrayList[i]);
			}
			Console.WriteLine("-----Yeni Kopya ArrayList");
			arrayList.Add("Clone işlemi");
			ArrayList newCopyList = (ArrayList)arrayList.Clone();//arrayList bu işlemle newCopyList e kopyalanır.(ArrayList) işlemi class düzeyinde bir cast(tip dönüşümü) işlemidir.

			for (int i = 0; i < newCopyList.Count; i++)
			{
				Console.WriteLine(newCopyList[i]);
			}
			//**********************************************
			Console.WriteLine("------Döngü ile ekleme----------");
			ArrayList arrayListDongu = new ArrayList();

			for (int i = 0; i < arrayList.Count; i++)
			{
				Console.WriteLine(i + 1 + ".eleman type:" + arrayList[i].GetType());
				arrayListDongu.Add(arrayList[i]);
				Console.WriteLine(arrayListDongu[i]);
			}

			Console.WriteLine("-------------Sayılar ArrayList-------");
			sayilar.Reverse();//elemanları ındex numarasına göre ters çevirir
			for (int i = 0; i < sayilar.Count; i++)
			{
				Console.WriteLine(sayilar[i]);
			}
			//ArrayList için CopyTo işlemi
			Console.WriteLine("-----------CopyTo ile işlem------------");
			string[] sehirler = new string[12];
			sehirler[0] = "İzmir";
			sehirler[1] = "Mardin";
			sehirler[2] = "Zonguldak";
			sehirler[3] = "Muğla";
			sehirler[4] = "Diyarbakır";
			sehirler[5] = "Iğdır";


			ArrayList city = new ArrayList();
			city.Add("Adana");
			city.Add("Isparta");
			city.Add("Kars");
			city.Add("Ankara");
			city.Add("Malatya");
			city.Add("Mersin");

			//city.CopyTo(cityIndex,kopyalanacak Colleciton/Dizi,üzerine yazılacak Index,başlangıç değeri);
			city.CopyTo(1, sehirler, 9, 1);//1 index City de Isparta, sehirler 9. ındex e taşı
			city.CopyTo(4, sehirler, 11, 1);//4 index City de Malatya, sehirler 11. index e taşı

			for (int i = 0; i < sehirler.Count(); i++)
			{
				Console.WriteLine(i + ".index:" + sehirler[i]);
			} 
		}
    }
}
