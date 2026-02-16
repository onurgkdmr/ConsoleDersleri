namespace _260210_2_Method_Ornek1
{
    internal class Program
    {
        static void Main(string[] args)
        {
            // Kullanıcıdan alınan 3 sayının toplamını veren işlemi method kullanarak kodlayınız.

            int toplam = 0;

            /*
            for (int i = 0; i < 3; i++)
            {
                Console.WriteLine(i + 1 + ". sayı:");
                int sayi = Convert.ToInt32(Console.ReadLine());

                toplam = toplam + sayi;
            }

            Console.WriteLine("3 sayının toplamı:" + toplam);
            */

            // SOLID PRENSIPLERİ => Dünya çapında yazılım kodlamak için uyulan kuralları içeren kısa bir isimdir.

            // Method ile çözüm:

            int s1 = SayiAl();
            toplam = Islem(s1, toplam);

			int s2 = SayiAl();
			toplam = Islem(s2, toplam);

			int s3 = SayiAl();
			toplam = Islem(s3, toplam);

            EkranaYaz("3 sayının toplamı:" + toplam);

		}

		static int SayiAl()
        {
            EkranaYaz("Sayı giriniz:");
            int sayi = Convert.ToInt32(Console.ReadLine());
            return sayi;
        }

        static int Islem(int sayi1,int toplam)
        {
            return toplam + sayi1;
        }
        
        static void EkranaYaz(string metin)
        {
            Console.WriteLine(metin);
        }

        

	}
}
