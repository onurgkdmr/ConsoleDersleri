namespace _260212_1_method_elektrik_fatura_ornek
{
	internal class Program
	{
		static void Main(string[] args)
		{
			/*
            
            Bir elektrik faturası için bazı şartlar ile fatura hesabı yapılmaktadır. Bu şartlar:
            - Eğer kullanılan elektrik kw olarak 0-150 arasında ise her kw için 1.06 Tl ile çarpılarak hesaplanmaktadır.
            - Örnek: 60*1.06 =>       
            - Eğer kullanılan elektrik kw olarak 150-300 arasında ise ilk 150 kw için 140 TL, 150 kw ve üstü içinde her kw için 1.16 Tl ile çarpılarak hesaplanmaktadır.
            - Eğer kullanılan elektrik kw olarak 300-450 arasında ise ilk 300 kw için 320 TL, 300 kw ve üstü içinde her kw için 1.25 Tl ile çarpılarak hesaplanmaktadır.
            - Eğer kullanılan elektrik kw olarak 450-650 arasında ise ilk 450 kw için 530 TL, 450 kw ve üstü içinde her kw için 1.29 Tl ile çarpılarak hesaplanmaktadır.
            - Eğer 650 ve üstü ise ilk 650 için 800 Tl, 650 ve üstü içnde 1.32 Tl   ile çarpılarak hesaplanmaktadır.
            bu şartlar kullanıcının gireceği harcadoğı elektriği kw cinsinden  aldıktan sonra ödeyeceği faturayı hesaplayınız?
            
			*/

            EkranaYaz("Harcanan elektrik değerini kilowatt (kw) cinsinden giriniz:");
            
			//double kw = OkuDouble();
			//EkranaYaz("Faturanız" + HesaplaFatura(kw));

			//Yukarıdaki 2 satır kodu tek bir satır ile aşağıdaki gibi kodlayabiliriz:

			EkranaYaz("Faturanız:" + HesaplaFatura(OkuDouble()));
			

            /*
            
            double fatura;

            if (kw > 0 && kw <=150)
            {
                fatura = kw * 1.06;
                Console.WriteLine("Elektrik faturası:" + fatura);
            }
            else if (kw > 150 && kw <= 300)
            {
                fatura = 140 + (kw - 150) * 1.16;
				Console.WriteLine("Elektrik faturası:" + fatura);
			}
            else if (kw > 300 && kw <= 450)
            {
                fatura = 320 + (kw - 300) * 1.25;
				Console.WriteLine("Elektrik faturası:" + fatura);
			}
            else if (kw > 450 && kw <= 650)
            {
                fatura = 530 + (kw - 450) * 1.29;
				Console.WriteLine("Elektrik faturası:" + fatura);
			}
            else if (kw > 650)
            {
                fatura = 800 + (kw - 650) * 1.32;
				Console.WriteLine("Elektrik faturası:" + fatura);
			}
            else
            {
                Console.WriteLine("Hatalı giriş yaptınız.");
            }

			*/
		}

		/// <summary>
		/// Ekrana yazı yazar.
		/// </summary>
		/// <param name="metin"></param>
        static void EkranaYaz(string metin)
        {
            Console.WriteLine(metin);
        }

		/// <summary>
		/// Double için dönüşüm yapar.
		/// </summary>
		/// <returns></returns>
        static double OkuDouble()
        {
            return Convert.ToDouble(Console.ReadLine());
		}


		/// <summary>
		/// Fatura hesabını girilen parametre ile hesaplar.
		/// </summary>
		/// <param name="kw"></param>
		/// <returns></returns>
        static double HesaplaFatura(double kw)
        {
			if (kw > 0 && kw <= 150)
			{
				return kw * 1.06;
				
			}
			else if (kw > 150 && kw <= 300)
			{
				return 140 + (kw - 150) * 1.16;
				
			}
			else if (kw > 300 && kw <= 450)
			{
				return 320 + (kw - 300) * 1.25;
				
			}
			else if (kw > 450 && kw <= 650)
			{
				return 530 + (kw - 450) * 1.29;
				
			}
			else
			{
				return 800 + (kw - 650) * 1.32;
			}
		}
	}
}
