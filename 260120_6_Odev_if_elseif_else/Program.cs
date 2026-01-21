namespace _260120_6_Odev_if_elseif_else
{
    internal class Program
    {
        static void Main(string[] args)
        {
            /*
            1) Kullanıcıdan alınan haftanın kaçıncı günündesiniz yapısına  göre günün adını veren (1=> pazartesi,2=> Salı,...) şekilde kodlamayı yapınız
            2) Kullanıcıdan alınan ay numarasına göre ayın adını ve kaç gün olduğunu ekranda gösteriniz? (1=> ocak=>31 gün, 2=> şubat=>28 gün,...)
            3) Kullanıcıdan alınan bir sayının pozitif,negatif veya 0 olduğunu ekranda gösteriniz
            */


            // SORU-1:
            Console.WriteLine("Haftanın kaçıncı günündesiniz (1-7):");
            byte gun =Convert.ToByte(Console.ReadLine());
            if (gun==1)
            {
                Console.WriteLine("Pazartesi");
            }
            else if (gun==2)
            {
                Console.WriteLine("Salı");
            }
			else if (gun == 3)
			{
				Console.WriteLine("Çarşamba");
			}
			else if (gun == 4)
			{
				Console.WriteLine("Perşembe");
			}
			else if (gun == 5)
			{
				Console.WriteLine("Cuma");
			}
			else if (gun == 6)
			{
				Console.WriteLine("Cumartesi");
			}
			else if (gun == 7)
			{
				Console.WriteLine("Pazar");
			}
			else
			{
				Console.WriteLine("Hatalı giriş yaptınız.");
			}
				
			


			// SORU-2:
			Console.WriteLine("Ay numarası giriniz:");
			byte ay = Convert.ToByte(Console.ReadLine());
			switch (ay)
			{
				case 1:
					Console.WriteLine("Ocak-31 gün");
					break;
				case 2:
					Console.WriteLine("Şubat-28 gün");
					break;
				case 3:
					Console.WriteLine("Mart-31 gün");
					break;
				case 4:
					Console.WriteLine("Nisan-30 gün");
					break;
				case 5:
					Console.WriteLine("Mayıs-31 gün");
					break;
				case 6:
					Console.WriteLine("Haziran-30 gün");
					break;
				case 7:
					Console.WriteLine("Temmuz-31 gün");
					break;
				case 8:
					Console.WriteLine("Ağustos-31 gün");
					break;
				case 9:
					Console.WriteLine("Eylül-30 gün");
					break;
				case 10:
					Console.WriteLine("Ekim-31 gün");
					break;
				case 11:
					Console.WriteLine("Kasım-30 gün");
					break;
				case 12:
					Console.WriteLine("Aralık-31 gün");
					break;
				default:
					Console.WriteLine("Hatalı giriş yaptınız.");
					break;
			}


			// SORU-3:
			Console.WriteLine("Sayı giriniz:");
			double sayi=Convert.ToDouble(Console.ReadLine());

			if (sayi>0)
			{
				Console.WriteLine("Sayı pozitiftir.");
			}
			else if (sayi<0)
			{
				Console.WriteLine("Sayı negatiftir.");
			}
			else
			{
				Console.WriteLine("Sayının değeri 0'dır.");
			}	

		}
	}
}
