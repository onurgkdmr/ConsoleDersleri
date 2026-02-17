namespace _260212_2_Emekli_method_ornek
{
    internal class Program
    {
        static void Main(string[] args)
        {
			/*
         Bir ülkede emeklilik hesabı cinsiyet,yaş,prim gün sayısı(Çalıştığı gün sayısı) şartlarına göre hesaplanıp emekli edilmektedir 
        Eğer Cinsiyet kadın ise
        yaş 60 ve üstü ise, prim 7300 ise kişi maaşının 15 katı kadar ikramiye alarak emekli ediliyor

        Eğer Cinsiyet erkek ise
        yaş 65 ve üstü ise, prim 8500 ise kişi maaşının 17.5 katı kadar ikramiye alarak emekli ediliyor 

        bu şartlara kişi emekli ise alacağı ikramiye, emekli değilse emekli olmama nedenini veren yapıyı kodlayınız
        NOT:Cinsiyet seçimi switch case ile yapılacaktır
        NOT:Eğer prim, yaş ve cinsiyet hatalı girilirse kullanıcıdan bir daha girmesi istenecektir, tekrar giriş yapmayacaksa bu koşul kullanıcıya bırakılır ve kullanıcı klavyeden belirlenen bir harf,yazı, karakter ile çıkış sağlanmalıdır

         */
			//Method adları büyük harf ile başlar yasHesapla değil=> YasHesapla
			//Camel(Deve) Case=> değişken ilk harf küçük, sonrasında büyük => ToplamHesapla=> toplamHesapla 

			EmekliHesapla(Cinsiyet());

		}

		static string Cinsiyet()
		{
			EkranaYaz("Cinsiyet giriniz?");
			return Console.ReadLine();
		}

		static void EmekliHesapla(string cinsiyet)
		{
			bool devamMi = false;
			do
			{
				switch (cinsiyet)
				{
					case "kadın":
					case "bayan":

						byte girilenYasKadin = Yas();

						if (girilenYasKadin >= 60)
						{
							int girilenPrim = PrimGunSayisi();

							if (girilenPrim >= 7300)
							{
								//...Emekli olabilir ve ikramiye hesabı için maaş  gerekli, maaş kullanıcıdan isteyelim
								double girilenMaas = Maas();
								double ikramiye = girilenMaas * 15;
								Cizgi();
								EkranaYaz("Emekli olabilirsiniz TEBRİKLER");
								Cizgi();
								EkranaYaz("Alacağınız ikramiye :" + ikramiye);
							}
							else
							{
								EkranaYaz("Girilen prim yetersiz olduğundan emekli olamazsaınız. Gerekli gün sayısı:" + (7300 - girilenPrim));
							}
						}
						else
						{
							Console.WriteLine("{0} için yaş:{1} emeklilik için yeterli değildir", cinsiyet, girilenYasKadin);
						}
						break;

					case "erkek":
					case "bay":

						byte girilenYasErkek = Yas();

						if (girilenYasErkek >= 65)
						{
							int girilenPrim = PrimGunSayisi();

							if (girilenPrim >= 8500)
							{
								//...Emekli olabilir ve ikramiye hesabı için maaş  gerekli, maaş kullanıcıdan isteyelim
								double girilenMaas = Maas();
								double ikramiye = girilenMaas * 17.5;
								Cizgi();
								EkranaYaz("Emekli olabilirsiniz TEBRİKLER");
								Cizgi();
								EkranaYaz("Alacağınız ikramiye :" + ikramiye);
							}
							else
							{
								EkranaYaz("Girilen prim yetersiz olduğundan emekli olamazsaınız. Gerekli gün sayısı:" + (8500 - girilenPrim));
							}

						}
						else
						{
							Console.WriteLine("{0} için yaş:{1} emeklilik için yeterli değildir", cinsiyet, girilenYasErkek);
						}

						break;
					default:
						Console.WriteLine("Hatalı cinsiyet girişi");
						break;
				}

				Console.WriteLine("Devam etmek ister misiniz?\n Evet için 1,evet ya a ok yazın!\nÇıkmak için herhangi bir tuşa basın");
				string tuslanan = Console.ReadLine();

				if (tuslanan == "1" || tuslanan == "evet" || tuslanan == "ok")
				{
					continue;//döngünün başına geçer, döngü kaldığı yerden devam eder
				}

				Console.WriteLine("Programı sonlandırdınız?");
				break;

			} while (true);
		}

		static void Cizgi()
		{
			EkranaYaz("-----------------------------------");
		}
		static byte Yas()
		{
			EkranaYaz("yaşınız");
			return Convert.ToByte(Oku());
		}

		static void EkranaYaz(string metin)
		{
			Console.WriteLine(metin);
		}

		static int PrimGunSayisi()
		{
			EkranaYaz("Prim gün sayısı giriniz?");
			return Convert.ToInt32(Oku());
		}

		static double Maas()
		{
			EkranaYaz("Maaşınızı giriniz?");
			return Convert.ToDouble(Oku());
		}

		static string Oku()
		{
			return Console.ReadLine();
		}
	}
}
