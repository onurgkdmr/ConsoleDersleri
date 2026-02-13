namespace _260212_2_Emekli_method_ornek
{
    internal class Program
    {
        static void Main(string[] args)
        {
			/*
			Bir ülkede emeklilik hesabı cinsiyet,yaş,prim gün sayısı(Çalıştığı gün sayısı) şartlarına göre hesaplanıp emekli edilmektedir. 
			Eğer Cinsiyet kadın ise;
			yaş 60 ve üstü ise, prim 7300 ise kişi maaşının 15 katı kadar ikramiye alarak emekli ediliyor.

			Eğer Cinsiyet erkek ise;
			yaş 65 ve üstü ise, prim 8500 ise kişi maaşının 17.5 katı kadar ikramiye alarak emekli ediliyor.

			Bu şartlara göre kişi emekli ise alacağı ikramiye, emekli değilse emekli olmama nedenini veren yapıyı kodlayınız.
			NOT:Cinsiyet seçimi switch case ile yapılacaktır.
			NOT:Eğer prim, yaş ve cinsiyet hatalı girilirse kullanıcıdan bir daha girmesi istenecektir, tekrar giriş yapmayacaksa bu koşul kullanıcıya bırakılır ve kullanıcı 
			klavyeden belirlenen bir harf,yazı, karakter ile çıkış sağlanmalıdır.

			*/

			//Method adları büyük harf ile başlar yasHesapla değil=> YasHesapla
			//Camel(Deve) Case=> değişken ilk harf küçük, sonrasında büyük => ToplamHesapla=> toplamHesapla 

			string cinsiyet;
			while (true)
			{
				Console.WriteLine("Cinsiyetinizi giriniz (kadın/bayan veya erkek/bay):");
				cinsiyet = Console.ReadLine().ToLower();
				if (cinsiyet == "kadın" || cinsiyet == "bayan" || cinsiyet == "erkek" || cinsiyet == "bay")
				{
					Console.WriteLine("Çıkmak için herhangi bir tuşa basınız.");
					string cikis = Console.ReadLine();
					Console.WriteLine("Çıkış yaptınız.");
					break;
				}
				Console.WriteLine("Cinsiyet girişi yanlış, tekrar deneyiniz.");
			}
			Console.WriteLine("Yaşınızı giriniz:");
			byte yas = Convert.ToByte(Console.ReadLine());

			Console.WriteLine("Prim gün sayısını giriniz:");
			int primGunSayisi=Convert.ToInt32(Console.ReadLine());

			Console.WriteLine("Maaşınızı giriniz:");
			double maas = Convert.ToDouble(Console.ReadLine());


			
			double ikramiye;

				switch (cinsiyet)
				{
					case "kadın":
					case "bayan":

						if (yas >= 60)
						{
							if (primGunSayisi >= 7300)
							{
								ikramiye = maas * 15;
								Console.WriteLine("Emekli olabilirsiniz ve ikramiyeniz:" + ikramiye);
							}
							else
							{
								Console.WriteLine("Emekli olamazsınız.");
							}
						}
						else
						{
							Console.WriteLine("{0} için yaş:{1} emeklilik için yeterli değildir", cinsiyet, maas);
						}
						break;

					case "erkek":
					case "bay":

						if (yas >= 65)
						{
							if (primGunSayisi >= 8500)
							{
								ikramiye = maas * 17.5;
								Console.WriteLine("Emekli olabilirsiniz ve ikramiyeniz:" + ikramiye);
							}
							else
							{
								Console.WriteLine("Emekli olamazsınız.");
							}
						}
						else
						{
							Console.WriteLine("{0} için yaş:{1} emeklilik için yeterli değildir", cinsiyet, maas);
						}
						break;

					default:
						Console.WriteLine("Hatalı cinsiyet girişi");
						break;
				}
				
			

			




		}


		static void EmekliHesapla(string cinsiyet)
		{
			switch (cinsiyet)
			{
				case "kadın":
				case "bayan":
					byte girilenYas = Yas();
					if (girilenYas >= 60)
					{
						int girilenPrim = PrimGunSayisi();
						if (girilenPrim >= 7300)
						{
							double ikramiye = Maas() * 15;
							Console.WriteLine("Emekli olabilirsiniz ve ikramiyeniz:"+ikramiye);
						}
						else
						{
							Console.WriteLine("Emekli olamazsınız.");
						}
					}
					else
					{
						Console.WriteLine("{0} için yaş:{1} emeklilik için yeterli değildir", cinsiyet, girilenYas);
					}
					break;

				case "erkek":
				case "bay":
					girilenYas = Yas();
					if (girilenYas >= 65)
					{
						int girilenPrim = PrimGunSayisi();
						if (girilenPrim >= 8500)
						{
							double ikramiye = Maas() * 17.5;
							Console.WriteLine("Emekli olabilirsiniz ve ikramiyeniz:" + ikramiye);
						}
						else
						{
							Console.WriteLine("Emekli olamazsınız.");
						}
					}
					else
					{
						Console.WriteLine("{0} için yaş:{1} emeklilik için yeterli değildir", cinsiyet, girilenYas);
					}
					break;
				default:
					Console.WriteLine("Hatalı cinsiyet girişi");
					break;
			}
		}
		static byte Yas()
		{
			EkranaYaz("Yaşınızı giriniz:");
			return Convert.ToByte(Console.ReadLine());
		}

		static void EkranaYaz(string metin)
		{
			Console.WriteLine(metin);
		}

		static int PrimGunSayisi()
		{
			EkranaYaz("Prim gün sayısını giriniz:");
			return Convert.ToInt32(Console.ReadLine());
		}

		static double Maas()
		{
			EkranaYaz("Maaşınızı giriniz:");
			return Convert.ToDouble(Console.ReadLine());
		}
	}
}
