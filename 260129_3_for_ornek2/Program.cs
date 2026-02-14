namespace _260129_3_for_ornek2
{
    internal class Program
    {
        static void Main(string[] args)
        {
            // 1-15000 arasındaki sayıların 5'in katı olup da 2'nin katı olmayan sayıların adeti ve toplamlarını hesaplayınız.

            int sayiAdeti = 0;
            int toplam = 0;

            for (int sayi = 1; sayi < 15000; sayi++)
            {
                if (sayi%5==0 && sayi%2!=0)
                {
                    toplam = toplam + sayi;
                    sayiAdeti++;
                }
                
                // Diğer yöntem aşağıdaki gibidir:

                /*
                if (sayi%5==0)
                {
                    if (sayi%2!=0)
                    {
                        toplam=toplam + sayi;
                        sayiAdeti++;
                    }
                }
                */

            }

            Console.WriteLine("5'in katı ama 2'nin katı olmayan sayıların adeti:" + sayiAdeti);
            Console.WriteLine("5'in katı ama 2'nın katı olmayan sayıların toplamı:" + toplam);

            Console.WriteLine("-----------------------------------------------------------");

            Console.WriteLine("5'in katı olup da 2'nin katı olmayan sayıların adeti:{0} ve sayıların toplamları:{1}",sayiAdeti,toplam);
        }
    }
}
