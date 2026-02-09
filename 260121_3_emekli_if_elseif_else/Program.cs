using System.Net.Security;

namespace _260121_3_emekli_if_elseif_else
{
    internal class Program
    {
        static void Main(string[] args)
        {
            /*
             
             Emekli yaş hesabı sistemine göre aşağıdaki sistem ile kişi emekli edilerek ikramiye verilmektedir.
            -Eğer cinsiyet kadın ise ve yaşı 60 ve üstü ise kişi maaşının 13 katı kadar ikramiye verilerek emekli edilecek.
            -Eğer cinsiyet erkek ise ve yaşı 65 ve üstü ise kişi maaşının 15 katı kadar ikramiye verilerek emekli edilecek.
            -Eğer bu 2 koşulu sağlamayan yapı varsa emekli olamıyacaktır.
             Bu sistemde emekli olup olmayacağını, emekli olursa alacağı ikramiyeyi hesaplayıp gösteren yapıyı kodlayınız.
              
			*/
            
            DESTPEK:
            double maas = 0, ikramiye = 0;
            string cinsiyet = string.Empty;
            byte yas = 0;

            Console.WriteLine("Cinsiyet giriniz (kadın,bayan,k veya erkek,bay,e)");
            cinsiyet = Console.ReadLine().ToLower();

            if (cinsiyet == "kadın" || cinsiyet == "bayan" || cinsiyet == "k")
            {
                Console.WriteLine("Yaşınızı giriniz:");
                yas = Convert.ToByte(Console.ReadLine());

                if (yas >= 60)
                {
                    Console.WriteLine("Maaşınızı giriniz:");
                    maas = Convert.ToDouble(Console.ReadLine());
                    ikramiye = maas * 13;
                    Console.WriteLine("Emekli olabilirsiniz ve ikramiyeniz:" + ikramiye);
                }
                else
                {
                    Console.WriteLine("Yaşınız emeklilik için yeterli değildir!");
                }
            }
            else if (cinsiyet == "erkek" || cinsiyet == "bay" || cinsiyet == "e")
            {
				Console.WriteLine("Yaşınızı giriniz:");
				yas = Convert.ToByte(Console.ReadLine());

				if (yas >= 65)
				{
					Console.WriteLine("Maaşınızı giriniz:");
					maas = Convert.ToDouble(Console.ReadLine());
					ikramiye = maas * 15;
					Console.WriteLine("Emekli olabilirsiniz ve ikramiyeniz:" + ikramiye);
				}
				else
				{
					Console.WriteLine("Yaşınız emeklilik için yeterli değildir!");
				}
			}
            else
            {
                Console.WriteLine("Hatalı cinsiyet girişi, lütfen tekrar deneyiniz.");
            }

            Console.WriteLine("-------------------------------------------------------");
            goto DESTPEK;
		}
	}
}
