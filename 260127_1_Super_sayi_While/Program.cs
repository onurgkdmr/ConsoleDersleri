namespace _260127_1_Super_sayi_While
{
    internal class Program
    {
        static void Main(string[] args)
        {
            // Bölünenlerinin toplamı kendisini veren sayılara süper sayı denir (kendisi dahil değil). 1-100000 arasındaki süper sayıları listeleyiniz.

            int superSayi = 0;
            
            while (superSayi<=100000)
            {
				int bolenSayi = 1;
				int toplam = 0;

				while (superSayi > bolenSayi)
				{
					if (superSayi % bolenSayi == 0)
					{
						toplam = toplam + bolenSayi;
					}
					bolenSayi++;
				}
				if (toplam == superSayi)
				{
					Console.WriteLine("Bu bir süper sayıdır:" + superSayi);
				}
				superSayi++;
			}
            
            
		}
    }
}
