namespace _260130_3_dizi_while
{
    internal class Program
    {
		static void Main(string[] args)
		{
			// Kullanıcıdan alınan 7 sayıyı aldıktan sonra gösterip toplamlarını hesaplayınız.

			int[] sayilar = new int[7];
			int elemanSayisi = sayilar.Count();
			int toplam = 0;
			int sayac = 0;
			while (sayac<elemanSayisi)
			{
				Console.WriteLine(sayac + 1 + ". sayıyı giriniz:");
				sayilar[sayac] = Convert.ToInt32(Console.ReadLine());
				sayac++;
			}
			 
			int i = 0;
			Console.WriteLine("Girilen sayılar:");

			do
			{
				Console.WriteLine(i+1+". eleman:" + sayilar[i]);
				toplam = toplam + sayilar[i];
				i++;
			} while (i<elemanSayisi);

			Console.WriteLine("Diziye eklenen sayıların toplamı:" + toplam);

		}
	}
}
