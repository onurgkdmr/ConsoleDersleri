namespace _260121_1_if_elseif_else_fatura
{
    internal class Program
    {
        static void Main(string[] args)
        {
            /*
            
             Kullanıcıdan alınan aylık elektrik harcama bilgisi kw cinsinden alındıktan sonra aşağıdaki bilgiler doğrultusunda aylık fatura hesaplanacaktır.
            1-Eğer harcanan 0-100(dahil) kw arasında ise 1 kw başına 0.95 kr alınacaktır.
            2-Harcanan 100-150(dahil) kw ise ilk 100 kw için 85 TL, 100 kw ı geçen her  kw başına 0.98 kr hesaplanacak.
            3- Harcanan 150-275 (dahil) ise ilk 150 kw için 135 TL, 150 kw ı geçen her kw başına 1.05 kr kesaplanacak. 
            3- Harcanan 275-400 (dahil) ise ilk 275 kw için 250 TL, 275 kw ı geçen her kw başına 1.25 kr kesaplanacak. 
            3- Harcanan 400-600 (dahil) ise ilk 400 kw için 430 TL, 400 kw ı geçen her kw başına 1.45 kr kesaplanacak. 
            5-600 kw geçen hesaplama için ilk 600 kw için 750 TL, 600 kw ı geçen her kw başına 1.55 hesaplacak şekilde toplam fatura ne kadar olacağını hesaplayan ve ekranda gösteren
            yapıyı kodlayınız.

             */

            START:
            Console.WriteLine("Aylık elektrik harcama bilgisi (kw) giriniz:");
            double kw=Convert.ToDouble(Console.ReadLine());
            double fatura;
            if (kw>0 && kw<=100)
            {
                fatura = kw * 95 / 100;
                Console.WriteLine("Toplam fatura değeri:" + fatura);
            }
            else if (kw>100 && kw<=150)
            {
                fatura = 85 + (kw - 100) * 98 / 100;
                Console.WriteLine("Toplam fatura değeri:" + fatura);
            }
            else if (kw>150 && kw<=275)
            {
                fatura = 135 + (kw - 150) * 105 / 100;
				Console.WriteLine("Toplam fatura değeri:" + fatura);
			}
			else if (kw>275 && kw<=400)
            {
                fatura = 250 + (kw - 275) * 125 / 100;
				Console.WriteLine("Toplam fatura değeri:" + fatura);
			}
            else if (kw>400 && kw<=600)
            {
                fatura = 430 + (kw - 400) * 145 / 100;
                Console.WriteLine("Toplam fatura değeri:" + fatura);
            }
            else if(kw>600)
            {
                fatura = 750 + (kw - 600) * 155 / 100;
				Console.WriteLine("Toplam fatura değeri:" + fatura);
			}
            else
            {
                Console.WriteLine("Hatalı giriş yaptınız, kontrol ediniz.");
            }
            goto START;
		}
	}
}
