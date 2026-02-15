namespace _260206_2_deger_dondurmeneyen_void_method
{
    internal class Program
    {
        static void Main(string[] args)
        {
            // Değer döndürmeyen void method => Method adından önce void ifadesi içeriyorsa bu değer döndürmeyen method demektir.

            Cizgi();
            AdSoyadBuyukHarf("Onur", "Gökdemir");
            Cizgi();

            Console.WriteLine("Adınız:");
            string ad = Console.ReadLine();

			Console.WriteLine("Soyadınız:");
			string soyad = Console.ReadLine();

            AdSoyadBuyukHarf(ad, soyad);

		}

        /// <summary>
        /// - ile çizgi çeker.
        /// </summary>
		static void Cizgi()
        {
            Console.WriteLine("--------------------------");
        }

        /// <summary>
        /// Adı ve Soyadı büyük harf yapar.
        /// </summary>
        /// <param name="ad"></param>
        /// <param name="soyad"></param>
        static void AdSoyadBuyukHarf(string ad,string soyad)
        {
            Console.WriteLine("Ad:{0} ve Soyad:{1}",ad.ToUpper(),soyad.ToUpper());
        }
    }
}
