namespace _260109_2_Mantiksal_Veri_Tipi
{
    internal class Program
    {
        static void Main(string[] args)
        {
            // Doğru => True, Yanlış => False

            bool mantik1 = true;
            bool mantik2 = false;

            Console.WriteLine(mantik1);

            // < : Küçüktür anlamına gelir.
            // > : Büyüktür anlamına gelir.

            bool durum1 = 10 > 9;  // True
            bool durum2 = 10 < 9;  // False

            Console.WriteLine("10>9 Sonuç:" + durum1);
			Console.WriteLine("10<9 Sonuç:" + durum2);

		}
	}
}
