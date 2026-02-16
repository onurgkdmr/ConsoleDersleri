namespace _260206_4_method_ornekler
{
    internal class Program
    {
        static void Main(string[] args)
        {
            // Console.WriteLine(); // Ekrana yazar.
            // Console.ReadLine(); // Ekranı okur.

            EkranaYaz("1. sayıyı giriniz:");
            
            // int sayi1 = Convert.ToInt32(Console.ReadLine());
            // int sayi1 = Convert.ToInt32(Oku());
            int sayi1 = IntYap();

            EkranaYaz("Girilen sayı:" + sayi1);
        }

        static void EkranaYaz(string metin)
        {
            Console.WriteLine(metin);
        }

        static string Oku()
        {
            return Console.ReadLine();
        }

        static int IntYap()
        {
            return Convert.ToInt32(Oku());
        }

    }
}
