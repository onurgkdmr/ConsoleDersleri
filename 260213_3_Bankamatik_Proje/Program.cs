using System.Drawing;
using System.Reflection.Metadata;
using static System.Runtime.InteropServices.JavaScript.JSType;

namespace _260213_3_Bankamatik_Proje
{
	internal class Program
	{
		static double bakiye = 250;
		static string sifre = "ab18";
		static void Main(string[] args)
		{
			EkranaYaz("ATM UYGULAMASI:");
			EkranaYaz("Başlangıç bakiyesi: 250 TL");
			Cizgi();
			EkranaYaz("1-Kartlı İşlem\n2-Kartsız İşlem");
			Cizgi();
			BaslangicMenu();
			Bosluk();
			KartliIslem();
			AnaMenu();
		}

		/// <summary>
		/// Bu metot kartlı veya kartsız işlem için seçim yaptırır.
		/// </summary>
		static void BaslangicMenu()
		{
			string secim;
			do
			{

				EkranaYaz("Kartlı işlem için 1'i, kartsız işlem için 2'yi tuşlayınız:");
				secim = Oku();

				if (secim == "1")
				{
					Cizgi();
					EkranaYaz("KARTLI İŞLEM");
				}
				else if (secim == "2")
				{
					EkranaYaz("KARTSIZ İŞLEM");
					EkranaYaz("Kartsız herhangi bir işlem yapılamamaktadır.");
					return;
					
				}
				else
				{
					EkranaYaz("Hatalı seçim yaptınız, tekrar deneyiniz.");
				}

			} while (secim != "1" && secim != "2");
			
		}

		/// <summary>
		/// Bu metot kartlı işlem için şifre ile giriş kontrolü yapar.
		/// </summary>
		static void KartliIslem()
		{
			int girisHakki = 2;

			while (girisHakki >= 0)
			{
				Console.Write("Şifrenizi giriniz:");
				sifre = Oku();

				if (sifre == "ab18")
				{
					EkranaYaz("Giriş başarılı. Ana menüye yönlendiriliyorsunuz.");
					Cizgi();
					EkranaYaz("ANA MENÜ");
					Bosluk();
					break;
				}
				else
				{
					EkranaYaz("Hatalı giriş yaptınız, tekrar deneyiniz. Kalan hak sayısı:" + girisHakki);
					girisHakki--;

					if (girisHakki == -1)
					{
						EkranaYaz("Şifre 3 kez yanlış girildi. Sistemden çıkılıyor.");
					}
				}
			}
		}

		/// <summary>
		/// Bu metot ana menüde seçilen işlemleri yaptırır.
		/// </summary>
		static void AnaMenu()
		{
			while (true)
			{
				EkranaYaz("1 - Para Çekme");
				EkranaYaz("2 - Para Yatırma");
				EkranaYaz("3 - Para Transferleri");
				EkranaYaz("4 - Eğitim Ödemeleri");
				EkranaYaz("5 - Ödemeler");
				EkranaYaz("6 - Bilgi Güncelleme");
				EkranaYaz("0 - Çıkış");
				EkranaYaz("Lütfen yapmak istediğiniz işlemi tuşlayınız:");


				string secim = Oku();
				switch (secim)
				{
					case "1":
						Cizgi();
						EkranaYaz("1 - PARA ÇEKME");
						Bosluk();

						ParaCekme();
						break;

					case "2":
						Cizgi();
						EkranaYaz("2 - PARA YATIRMA");
						Bosluk();

						ParaYatirma();
						break;


					case "3":
						Cizgi();
						EkranaYaz("3 - PARA TRANSFERLERİ");
						Bosluk();

						ParaTransfer();
						break;


					case "4":
						Cizgi();
						EkranaYaz("4 - EĞİTİM ÖDEMELERİ");
						Bosluk();

						EkranaYaz("Bu sayfa arızalıdır.");
						Bosluk();

						AltMenu();
						break;

					case "5":
						Cizgi();
						EkranaYaz("5 - ÖDEMELER");
						Bosluk();

						Odemeler();
						break;

					case "6":
						Cizgi();
						EkranaYaz("6 - BİLGİ GÜNCELLEME");
						Bosluk();

						BilgiGuncelle();
						break;

					case "0":
						Cizgi();
						EkranaYaz("Çıkış yapılıyor...");
						return;

					default:
						Cizgi();
						EkranaYaz("Hatalı seçim yaptınız.");
						break;
				}
			}
		}

		/// <summary>
		/// Bu metot para çekme ile ilgili işlemleri gerçekleştirir.
		/// </summary>
		static void ParaCekme()
		{
			Console.Write("Çekilecek para tutarını giriniz:");
			double cekilecekParaTutari = DoubleYap();


			if (cekilecekParaTutari <= bakiye)
			{
				bakiye = bakiye - cekilecekParaTutari;
				EkranaYaz("Güncel bakiyeniz:" + bakiye);

			}
			else
			{
				EkranaYaz("Yetersiz bakiye! Para çekme işlemi gerçekleştirilememektedir.");

			}
			Bosluk();
			AltMenu();
		}

		/// <summary>
		/// Bu metot para yatırma ile ilgili işlemleri gerçekleştirir.
		/// </summary>
		static void ParaYatirma()
		{
			while (true)
			{
				EkranaYaz("1 - Kredi Kartına");
				EkranaYaz("2 - Kendi Hesabına");
				EkranaYaz("9 - ANA MENÜ");
				EkranaYaz("0 - ÇIKIŞ");
				EkranaYaz("Lütfen yapmak istediğiniz işlemi tuşlayınız:");

				string secim = Oku();
				if (secim == "1")
				{
					EkranaYaz("---- 1 - Kredi Kartına----");
					Console.Write("Kart numarasını giriniz (En az 12 haneli olacak şekilde): ");
					string kartNo = Oku();

					if (kartNo.Length >= 12)
					{
						Console.Write("Yatırılacak para tutarını giriniz:");
						double yatirilacakParaTutari = DoubleYap();

						if (bakiye >= yatirilacakParaTutari)
						{
							bakiye = bakiye - yatirilacakParaTutari;
							EkranaYaz("Para kredi kartına yatırıldı. Güncel bakiyeniz:" + bakiye);
							Bosluk();
							AltMenu();
							break;
						}
						else
						{
							EkranaYaz("Bakiye yetersiz. İşlem gerçekleştirilemiyor!");
							Bosluk();
							AltMenu();
							break;
						}
					}
					else
					{
						EkranaYaz("Geçersiz kart numarası.");
						Bosluk();
						AltMenu();
						break;
					}

				}
				else if (secim == "2")
				{
					EkranaYaz("---- 2 - Kendi Hesabına ----");
					Console.Write("Yatırılacak para tutarını giriniz:");
					double yatirilacakParaTutari1 = DoubleYap();
					bakiye = bakiye + yatirilacakParaTutari1;
					EkranaYaz("Para kendi hesabınıza yatırıldı. Güncel bakiyeniz:" + bakiye);
					Bosluk();
					AltMenu();
					break;
				}
				else if (secim == "9")
				{
					Cizgi();
					EkranaYaz("ANA MENÜ");
					break;
				}
				else if (secim == "0")
				{
					EkranaYaz("Çıkış yapılıyor...");
					Environment.Exit(0);
				}
			}
		}

		/// <summary>
		/// Bu metot para transferi ile ilgili işlemleri gerçekleştirir.
		/// </summary>
		static void ParaTransfer()
		{
			while (true)
			{
				EkranaYaz("1 - Başka Hesaba EFT ");
				EkranaYaz("2 - Başka Hesaba Havale");
				EkranaYaz("9 - ANA MENÜ");
				EkranaYaz("0 - ÇIKIŞ");
				EkranaYaz("Lütfen yapmak istediğiniz işlemi tuşlayınız:");

				string secim5 = Oku();
				if (secim5 == "1")
				{
					EkranaYaz("---- 1 - EFT ----");
					Console.Write("IBAN NO giriniz (TR ile başlayan 12 haneli numara):");
					string ibanNo = Oku();

					if (ibanNo.StartsWith("TR") && ibanNo.Length == 12)
					{
						Console.Write("Gönderilecek para tutarını giriniz:");
						double gonderilecekParaTutari = DoubleYap();

						if (bakiye >= gonderilecekParaTutari)
						{
							bakiye = bakiye - gonderilecekParaTutari;
							EkranaYaz("EFT ile para transferi gerçekleştirildi. Güncel bakiyeniz:" + bakiye);
							Bosluk();
							AltMenu();
							break;
						}
						else
						{
							EkranaYaz("Bakiye yetersiz. İşlem gerçekleştirilemiyor!");
							Bosluk();
							AltMenu();
							break;

						}
					}
					else
					{
						EkranaYaz("Geçersiz IBAN NO.");
						Bosluk();
						AltMenu();
						break;
					}
				}
				else if (secim5 == "2")
				{
					EkranaYaz("---- 2 - Havale ----");
					Console.Write("Hesap numarasını giriniz (11 haneli):");
					string hesapNo = Oku();

					if (hesapNo.Length == 11)
					{
						Console.Write("Gönderilecek para tutarını giriniz:");
						double gonderilecekParaTutari1 = DoubleYap();

						if (bakiye >= gonderilecekParaTutari1)
						{
							bakiye = bakiye - gonderilecekParaTutari1;
							EkranaYaz("Havale ile para transferi gerçekleştirildi. Güncel bakiyeniz:" + bakiye);
							Bosluk();
							AltMenu();
							break;
						}
						else
						{
							EkranaYaz("Bakiye yetersiz. İşlem gerçekleştirilemiyor!");
							Bosluk();
							AltMenu();
							break;
						}
					}
					else
					{
						EkranaYaz("Geçersiz hesap numarası.");
						Bosluk();
						AltMenu();
						break;
					}
				}
				else if (secim5 == "9")
				{
					Cizgi();
					EkranaYaz("ANA MENÜ");
					break;
				}
				else if (secim5 == "0")
				{
					EkranaYaz("Çıkış yapılıyor...");
					Environment.Exit(0);
				}
			}
		}

		/// <summary>
		/// Bu metot ödemeler ile ilgili işlemleri gerçekleştirir.
		/// </summary>
		static void Odemeler()
		{
			while (true)
			{
				EkranaYaz("1 - Elektrik Faturası");
				EkranaYaz("2 - Telefon Faturası");
				EkranaYaz("3 - İnternet Faturası");
				EkranaYaz("4 - Su Faturası");
				EkranaYaz("5 - OGS Ödemeleri");

				EkranaYaz("9 - ANA MENÜ");
				EkranaYaz("0 - ÇIKIŞ");
				EkranaYaz("Lütfen yapmak istediğiniz işlemi tuşlayınız:");


				string secim = Oku();
				switch (secim)
				{
					case "1":

						EkranaYaz("Elektrik faturası tutarını giriniz:");
						double elektrikFaturasi = DoubleYap();

						if (bakiye >= elektrikFaturasi)
						{
							bakiye = bakiye - elektrikFaturasi;
							EkranaYaz("Elektrik faturası için ödeme yapıldı. Güncel bakiyeniz:" + bakiye);
							Bosluk();
							AltMenu();
							break;
						}
						else
						{
							EkranaYaz("Bakiye yetersiz. İşlem gerçekleştirilemiyor!");
							Bosluk();
							AltMenu();
							break;
						}

					case "2":

						EkranaYaz("Telefon faturası tutarını giriniz:");
						double telefonFaturasi = DoubleYap();

						if (bakiye >= telefonFaturasi)
						{
							bakiye = bakiye - telefonFaturasi;
							EkranaYaz("Telefon faturası için ödeme yapıldı. Güncel bakiyeniz:" + bakiye);
							Bosluk();
							AltMenu();
							break;
						}
						else
						{
							EkranaYaz("Bakiye yetersiz. İşlem gerçekleştirilemiyor!");
							Bosluk();
							AltMenu();
							break;
						}

					case "3":

						EkranaYaz("İnternet faturası tutarını giriniz:");
						double internetFaturasi = DoubleYap();

						if (bakiye >= internetFaturasi)
						{
							bakiye = bakiye - internetFaturasi;
							EkranaYaz("İnternet faturası için ödeme yapıldı. Güncel bakiyeniz:" + bakiye);
							Bosluk();
							AltMenu();
							break;
						}
						else
						{
							EkranaYaz("Bakiye yetersiz. İşlem gerçekleştirilemiyor!");
							Bosluk();
							AltMenu();
							break;
						}

					case "4":

						EkranaYaz("Su faturası tutarını giriniz:");
						double suFaturasi = DoubleYap();

						if (bakiye >= suFaturasi)
						{
							bakiye = bakiye - suFaturasi;
							EkranaYaz("Su faturası için ödeme yapıldı. Güncel bakiyeniz:" + bakiye);
							Bosluk();
							AltMenu();
							break;
						}
						else
						{
							EkranaYaz("Bakiye yetersiz. İşlem gerçekleştirilemiyor!");
							Bosluk();
							AltMenu();
							break;
						}

					case "5":

						EkranaYaz("OGS için ödeme tutarını giriniz:");
						double ogsOdeme = DoubleYap();

						if (bakiye >= ogsOdeme)
						{
							bakiye = bakiye - ogsOdeme;
							EkranaYaz("OGS için ödeme yapıldı. Güncel bakiyeniz:" + bakiye);
							Bosluk();
							AltMenu();
							break;
						}
						else
						{
							EkranaYaz("Bakiye yetersiz. İşlem gerçekleştirilemiyor!");
							Bosluk();
							AltMenu();
							break;
						}

					case "9":

						Cizgi();
						EkranaYaz("ANA MENÜ");
						break;

					case "0":

						EkranaYaz("Çıkış yapılıyor.");
						Environment.Exit(0);
						break;

					default:
						EkranaYaz("Hatalı seçim yaptınız.");
						break;
				}
				break;
			}
		}
	
		/// <summary>
		/// Bu metot şifre kontrolünü ve bilgilerin güncellenmesini sağlar.
		/// </summary>
		static void BilgiGuncelle()
		{
			while (true)
			{
				EkranaYaz("1 - Şifre Değiştir");
				EkranaYaz("9 - ANA MENÜ");
				EkranaYaz("0 - ÇIKIŞ");
				EkranaYaz("Lütfen yapmak istediğiniz işlemi tuşlayınız:");

				string secim = Oku();

				if (secim == "1")
				{
					EkranaYaz("Mevcut şifrenizi giriniz: ");
					string mevcutSifre = Oku();

					if (mevcutSifre == sifre)
					{
						EkranaYaz("Yeni şifre: ");
						sifre = Oku();
						EkranaYaz("Şifre güncellendi.");
						Bosluk();
						AltMenu();
						break;
					}
					else
					{
						EkranaYaz("Şifre yanlış!");
						Bosluk();
						AltMenu();
						break;
					}
				}
				else if (secim == "9")
				{
					Cizgi();
					EkranaYaz("ANA MENÜ");
					break;
				}
				else if (secim == "0")
				{
					EkranaYaz("Çıkış yapılıyor...");
					Environment.Exit(0);
				}
			}
		}

		/// <summary>
		/// Bu metot alt menü işlemlerini gerçekleştirir.
		/// </summary>
		static void AltMenu()
		{
			EkranaYaz("9 - ANA MENÜ");
			EkranaYaz("0 - ÇIKIŞ");
			EkranaYaz("Lütfen yapmak istediğiniz işlemi tuşlayınız:");
			string secim = Oku();

			if (secim == "9")
			{
				Cizgi();
				EkranaYaz("ANA MENÜ");

			}
			else if (secim == "0")
			{
				EkranaYaz("Çıkış yapılıyor...");
				Environment.Exit(0);
			}
		}

		/// <summary>
		/// Bu metot ekrana metin yazdırır.
		/// </summary>
		/// <param name="metin"></param>
		static void EkranaYaz(string metin)
		{
			Console.WriteLine(metin);
		}

		/// <summary>
		/// Bu metot ekrana çizgi yazdırır.
		/// </summary>
		static void Cizgi()
		{
			Console.WriteLine("------------------------------------");
		}

		/// <summary>
		/// Bu metod kodun ekrana okunmasını sağlar.
		/// </summary>
		/// <returns></returns>
		static string Oku()
		{
			return Console.ReadLine();
		}

		/// <summary>
		/// Bu metot girilen değeri double veri tipine dönüştürür.
		/// </summary>
		/// <returns></returns>
		static double DoubleYap()
		{
			return Convert.ToDouble(Console.ReadLine());
		}

		/// <summary>
		/// Bu metot ekranda boşluk atmayı sağlar.
		/// </summary>
		static void Bosluk()
		{
			Console.WriteLine();
		}
	}
}
