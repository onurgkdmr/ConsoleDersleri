namespace _260123_5_while_ornek1
{
    internal class Program
    {
        static void Main(string[] args)
        {
            // 5-135 arasındaki sayıları ekrana yazdırınız.

            int sayi = 5;

            while (sayi <= 135)
            {
                Console.WriteLine(sayi);
                sayi++;
            }

            Console.WriteLine("-----------------------------------");

            // 5-135 arasındaki sayıların toplamını hesaplayan kod yapısını yazınız.

            int sayi1 = 5;
            int toplam = 0;

            while (sayi1<=135)
            {
                toplam = toplam + sayi1;
                sayi1++;
            }
            
            Console.WriteLine("5-135 arasındaki sayıların toplamı:" + toplam);
        }
    }
}
