namespace _260121_4_maas_zam
{
    internal class Program
    {
        static void Main(string[] args)
        {
            /*
			 
             Kullanıcıdan alınan bir maaş için; 
            Eğer maaş değeri 25.000 ve altında ise %45 zam,
            Eğer maaş 25.000-50.000 arasında ise %17 zam,
            Eğer maaş 50.000-100.000 arasında ise %9 zam,
            Eğer maaş 100.000-150.000 ve arasında ise %5 zam,
            Eğer maaş 150.000 üstünde ise %3 zam yapacak şekilde yapılan zam oranını ve yeni maaşı kullanıcıya gösteren yapıyı kodlayınız.
             
			*/

            Console.WriteLine("Maaş bilgisi giriniz:");
            double maas=Convert.ToDouble(Console.ReadLine());

            double yenimaas;

            if (maas<=25000)
            {
                yenimaas = maas + maas * 45 / 100;
                Console.WriteLine("Zam oranı = %45 ile yeni maaşınız:" + yenimaas);
            }
            else if (maas>25000 && maas<=50000)
            {
                yenimaas = maas + maas * 17 / 100;
				Console.WriteLine("Zam oranı = %17 ile yeni maaşınız:" + yenimaas);
			}
			else if (maas > 50000 && maas <= 100000)
			{
				yenimaas = maas + maas * 9 / 100;
				Console.WriteLine("Zam oranı = %9 ile yeni maaşınız:" + yenimaas);
			}
			else if (maas > 100000 && maas <= 150000)
			{
				yenimaas = maas + maas * 5 / 100;
				Console.WriteLine("Zam oranı = %5 ile yeni maaşınız:" + yenimaas);
			}
			else if (maas > 150000)
			{
				yenimaas = maas + maas * 3 / 100;
				Console.WriteLine("Zam oranı = %3 ile yeni maaşınız:" + yenimaas);
			}
            else
            {
                Console.WriteLine("Hatalı giriş yaptınız.");
            }
        }
	}
}
