namespace _260129_2_for_ornek1
{
    internal class Program
    {
        static void Main(string[] args)
        {
            // Tek for ile 50-5000 arasındaki sayılardan 11 ve 13'ün katları olanların sayısını ve katları toplamını ayrı ayrı gösteriniz.

            int toplam11 = 0;
            int toplam13 = 0;
            int sayiAdeti11 = 0;
            int sayiAdeti13 = 0;

            // int toplam11=0, toplam13=0, sayiAdeti11=0, sayiAdeti13=0 şeklinde de tanımlanabiliyor (virgülle).

            for (int sayi = 50; sayi < 5000; sayi++)
            {
                if (sayi%11==0)
                {
                    toplam11 = toplam11 + sayi; // veya toplam+=i; şeklinde de yazılabilir.
                    sayiAdeti11++;
				}

				if (sayi % 13 == 0)
                {
                    toplam13 = toplam13 + sayi;
                    sayiAdeti13++;
                }
			}
            Console.WriteLine();
			Console.WriteLine("11'in katları olan sayıların adeti:" + sayiAdeti11);
            Console.WriteLine("11'in katları olan sayıların toplamı:" + toplam11);
			Console.WriteLine("13'ün katları olan sayıların adeti:" + sayiAdeti13);
			Console.WriteLine("13'ün katları olan sayıların toplamı:" + toplam13);

            Console.WriteLine("-----------------------------------------------------");
            Console.WriteLine("*************** DİĞER CEVAP YÖNTEMİ *****************");

            Console.WriteLine("11'in katları sayısı:{0} ve toplamı:{1}", sayiAdeti11, toplam11);
			Console.WriteLine("13'ün katları sayısı:{0} ve toplamı:{1}", sayiAdeti13, toplam13);

		}
	}
}
