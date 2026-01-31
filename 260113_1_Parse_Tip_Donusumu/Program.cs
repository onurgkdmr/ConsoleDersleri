namespace _260113_1_Parse_Tip_Donusumu
{
    internal class Program
    {
        static void Main(string[] args)
        {
            Console.WriteLine("Parse Projesi:");
            // Convert => Herhangi bir tipteki veriyi istenilen tipe dönüştürür.
            // Parse => Sadece string olan tipteki bir veriyi istenilen tipe dönüştürür.

            string yaziSayi = "1000";
            int sayi1 = 250;

            int s1 = Convert.ToInt32(yaziSayi);
            int s2 = int.Parse(yaziSayi);

            double d1 = Convert.ToDouble(sayi1);
            // double d2 = double.Parse(sayi1); // Yanlış. Çünkü int tipteki veriyi Parse ile dönüştüremezsin.
            double d2 = double.Parse(yaziSayi);

            // double yerine decimal, short, byte vs. de kullanılabilir.

            // Kullanıcıdan sayı istenildiğinde;

            Console.WriteLine("1. sayıyı giriniz:");
            int deger1 = int.Parse(Console.ReadLine());

			Console.WriteLine("2. sayıyı giriniz:");
			int deger2 = Convert.ToInt32(Console.ReadLine());

            int toplam = deger1 + deger2;
            Console.WriteLine("Girilen 2 sayının toplamı:" + toplam);

            
            // CTRL + K + D => Kodları hizalar.

		}
	}
}
