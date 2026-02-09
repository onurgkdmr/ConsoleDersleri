namespace _260123_2_switch_case_ornek1
{
    internal class Program
    {
        static void Main(string[] args)
        {
            // Kullanıcıdan alınan kaçıncı ayda olduğu bilgisine göre ayın adını ve hangi mevsimde olduğunu hesaplayan yapıyı kodlayınız.

			basla:
            Console.WriteLine("Kaçıncı aydasınız?:");
            byte ay=Convert.ToByte(Console.ReadLine());

            switch(ay)
            {
                case 12:
                case 1:
                case 2:
                    Console.WriteLine("Kış mevsimindesiniz.");
                    if (ay==12)
                    {
                        Console.WriteLine("Aralık");
                    }
                    else if (ay==1)
                    {
						Console.WriteLine("Ocak");
					}
                    else
                    {
						Console.WriteLine("Şubat");
					}
					break;

                case 3:
					Console.WriteLine("Mart - İlkbahar");
                    break;
				case 4:
					Console.WriteLine("Nisan - İlkbahar");
					break;
				case 5:
					Console.WriteLine("Mayıs - İlkbahar");
					break;
				case 6:
				case 7:
				case 8:
					Console.WriteLine("Yaz mevsimindesiniz");
					switch(ay)
					{
						case 6:
							Console.WriteLine("Haziran");
							break;
						case 7:
							Console.WriteLine("Temmuz");
							break;
						case 8:
							Console.WriteLine("Ağustos");
							break;
						default:
							// Bu çözümde default alanı okunmaz.
							Console.WriteLine("--- Bu alan okunmaz ---");
							break;
					}
					
					break;
				case 9:
					Console.WriteLine("Eylül - Sonbahar");
					break;
				case 10:
					Console.WriteLine("Ekim - Sonbahar");
					break;
				case 11:
					Console.WriteLine("Kasım - Sonbahar");
					break;
				default:
					Console.WriteLine("Hatalı giriş yaptınız, kontrol ediniz.");
					break;
			}
			goto basla;
		}
    }
}
