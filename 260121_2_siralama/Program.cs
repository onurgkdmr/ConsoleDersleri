namespace _260121_2_siralama
{
    internal class Program
    {
        static void Main(string[] args)
        {
            // Kullanıcıdan alınan 3 sayı için sayıları küçükten büyüğe sıralayan yapıyı kodlayınız.
            BASLA:
            int s1, s2, s3;
            
            Console.WriteLine("1. sayıyı giriniz:");
            s1 = Convert.ToInt32(Console.ReadLine());
            
            Console.WriteLine("2. sayıyı giriniz:");
            s2 = Convert.ToInt32(Console.ReadLine());

			Console.WriteLine("3. sayıyı giriniz:");
			s3 = Convert.ToInt32(Console.ReadLine());
            
            
            // s1 > s2, s3 için;
            if (s1>s2 && s1>s3)
            {
                if (s2>s3)
                {
                    Console.WriteLine("Sıralama => s1>s2>s3");
                }
                else if (s3>s2)
                {
                    Console.WriteLine("Sıralama => s1>s3>s2");
                }
                else if (s2==s3)
                {
                    Console.WriteLine("Sıralama => s1>s2=s3");
                }
            }

            // s2 > s1, s3 için;
            else if (s2>s1 && s2>s3)
            {
                if (s1>s3)
                {
                    Console.WriteLine("Sıralama => s2>s1>s3");
                }
                else if (s3>s1)
                {
					Console.WriteLine("Sıralama => s2>s3>s1");
				}
                else if (s1==s3)
                {
					Console.WriteLine("Sıralama => s2>s1=s3");
				}
			}

            // s3 > s1, s2 için;
            else if (s3>s1 && s3>s2)
            {
				if (s1>s2)
                {
					Console.WriteLine("Sıralama => s3>s1>s2");
				}
                else if (s2>s1)
                {
					Console.WriteLine("Sıralama => s3>s2>s1");
				}
                else if (s1==s2)
                {
                    Console.WriteLine("Sıralama => s3>s1=s2");
                }
			}
            goto BASLA;
		}
	}
}
