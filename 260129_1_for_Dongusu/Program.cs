namespace _260129_1_for_Dongusu
{
    internal class Program
    {
        static void Main(string[] args)
        {
            // for döngüsü:

            // Genelde sayısal işlemlerde kullanılır ama her türlü de kullanılabilir. Tamamen kullanıma bağlıdır.

            int sayac = 0; // while ve do while döngülerinde bu şekilde bir değişkene ihtiyaç duyulur ama for döngüsü bu yapıyı kendi içinde getirir.

            while ( sayac<100)
            {
                Console.WriteLine(sayac);
                sayac++;
            }

            // Yukarıdaki while ile aşağıdaki for'u karşılaştıralım.

            // for (1.Adım, 2.Adım, 3.Adım)
            for (int i = 0; i < 100; i++)
            {
                Console.Write(i+",");
            }

            Console.WriteLine("");
            Console.WriteLine("for ile tersten sayma işlemi:");

            for (int i=25; i>10; i--)
            {
                Console.Write(i + ",");
            }
        }
    }
}
