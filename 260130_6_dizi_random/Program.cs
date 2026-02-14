namespace _260130_6_dizi_random
{
    internal class Program
    {
        static void Main(string[] args)
        {
            // Random => Rastgele sayı üretmek için kullanılan bir class yapısıdır
            
            Random rastgele = new Random();
            Console.WriteLine(rastgele.Next(200));

            for (int i = 0; i < 150; i++)
            {
                int sayi = rastgele.Next(200);
                Console.Write(sayi+",");
            }
        }
    }
}
