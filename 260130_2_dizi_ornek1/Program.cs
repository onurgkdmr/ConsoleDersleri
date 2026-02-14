namespace _260130_2_dizi_ornek1
{
    internal class Program
    {
        static void Main(string[] args)
        {
            // Kullanıcıdan alınan 7 sayıyı aldıktan sonra gösterip toplamlarını hesaplayınız.

            int[] sayilar = new int[7];
            int elemanSayisi = sayilar.Count();

            for (int i = 0; i < elemanSayisi; i++)
            {
                Console.WriteLine(i + 1 + ". sayıyı giriniz:");
                sayilar[i] = Convert.ToInt32(Console.ReadLine());
            }

            //--------------------------------------------------------

            int toplam = 0;
            for (int i = 0; i < elemanSayisi; i++)
            {
                Console.WriteLine(i + 1 + ". eleman:"+ sayilar[i]);
                toplam = toplam + sayilar[i];
            }

            Console.WriteLine("Diziye eklenen sayıların toplamı:" + toplam);
        }
    }
}
