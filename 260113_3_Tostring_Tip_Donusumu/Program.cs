namespace _260113_3_Tostring_Tip_Donusumu
{
    internal class Program
    {
        static void Main(string[] args)
        {

            // ToString() => Herhangi bir tipteki değeri string yapmak için kullanılır.

            int sayi1 = 30;
            double sayi2 = 90.5;
            DateTime tarih =DateTime.Now;

            string metin1 = sayi1.ToString();
			string metin2 = sayi2.ToString();
			string metin3 = tarih.ToString();

            Console.WriteLine("Tam sayı string:" + metin1);
			Console.WriteLine("Ondalık sayı string:" + metin2);
			Console.WriteLine("Tarih string:" + metin3);



		}
	}
}
