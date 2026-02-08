namespace _260120_5_if_elseif_else_tanim
{
    internal class Program
    {
        static void Main(string[] args)
        {
            /*
            
            if (true)
            {

            }
            else if (false)
            {

            }
            else
            {

            }
            
            */

            START:
            Console.WriteLine("Sayı giriniz:");
            int sayi=Convert.ToInt32(Console.ReadLine());

            if (sayi>=0 && sayi<=9)
            {
                Console.WriteLine("Sayı tek basamaklıdır");
            }
            else if (sayi>=10 && sayi<=99)
            {
                Console.WriteLine("Sayı 2 basamaklıdır");
            }
			else if (sayi >= 100 && sayi <= 999)
			{
				Console.WriteLine("Sayı 3 basamaklıdır");
			}
			else if (sayi >= 1000 && sayi <= 9999)
			{
				Console.WriteLine("Sayı 4 basamaklıdır");
			}
			else if (sayi >= 10000 && sayi <= 99999)
			{
				Console.WriteLine("Sayı 5 basamaklıdır");
			}
			else if (sayi >= 100000 && sayi <= 999999)
			{
				Console.WriteLine("Sayı 6 basamaklıdır");
			}
            else
            {
                Console.WriteLine("Yeterli.");
            }
            goto START;
		}
    }
}
