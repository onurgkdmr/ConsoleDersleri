namespace _260113_5_Odevler
{
    internal class Program
    {
        static void Main(string[] args)
        {
            /*
             Kullanıcıdan alınan 4 sayı için aşağıdaki işlemlerin sonuçlarını hesaplayıp ekranda gösteriniz.
            1) 4 sayının toplamı
            2) 1. ve 2. sayıların çarpım sonucunun 4. sayıya bölünmesi
            3) 1. ve 2. sayıların toplam sonucunun, 3. sayıdan 4. sayının çıkartılması sonucuna bölünmesi
            4) 1. , 2. ve 3. sayıların toplamının 4. sayıya bölünmesi
            5) 1. , 2. ve 3. sayılarının çarpım sonucunun 4. sayıya bölünmesi
             */

            Console.WriteLine("1. sayıyı giriniz:");
            int sayi1 = Convert.ToInt32(Console.ReadLine());

            Console.WriteLine("2. sayıyı giriniz:");
            int sayi2= Convert.ToInt32(Console.ReadLine());

            Console.WriteLine("3. sayıyı giriniz:");
            int sayi3= Convert.ToInt32(Console.ReadLine());

            Console.WriteLine("4. sayıyı giriniz:");
            int sayi4= Convert.ToInt32(Console.ReadLine());

            int toplam = sayi1 + sayi2 + sayi3 + sayi4;
            Console.WriteLine("4 sayının toplamı:" + toplam);

            double sonuc1 = (sayi1 * sayi2) / (double)sayi4;
            Console.WriteLine("1. ve 2. sayıların çarpım sonucunun 4. sayıya bölümü:" + sonuc1);

            double sonuc2 = (sayi1 + sayi2) / ((double)sayi3 - sayi4);
            Console.WriteLine("1. ve 2. sayıların toplam sonucunun, 3. sayıdan 4. sayının çıkartılması sonucuna bölümü:" + sonuc2);

            double sonuc3 = (sayi1 + sayi2 + sayi3) / (double)sayi4;
            Console.WriteLine("1. , 2. ve 3. sayıların toplamının 4. sayıya bölümü:" + sonuc3);

            double sonuc4 = (sayi1 * sayi2 * sayi3) / (double)sayi4;
            Console.WriteLine("1. , 2. ve 3. sayıların çarpım sonucunun 4. sayıya bölümü:" + sonuc4);


        }
    }
}
