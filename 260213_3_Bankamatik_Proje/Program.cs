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


			Console.WriteLine("ATM UYGULAMASI:");

			Console.WriteLine("Başlangıç bakiyesi: 250 TL");

			Console.WriteLine("------------------------------------");

			Console.WriteLine("1-Kartlı İşlem\n2-Kartsız İşlem");

			Console.WriteLine("------------------------------------");



			string secim;

			do
			{

				Console.WriteLine("Kartlı işlem için 1'i, kartsız işlem için 2'yi tuşlayınız:");
				secim = Console.ReadLine();

				if (secim == "1")
				{
					Console.WriteLine("------------------------------------");
					Console.WriteLine("KARTLI İŞLEM");
				}
				else if (secim == "2")
				{
					Console.WriteLine("KARTSIZ İŞLEM");
					Console.WriteLine("Kartsız herhangi bir işlem yapılamamaktadır.");
					return;
				}
				else
				{
					Console.WriteLine("Hatalı seçim yaptınız, tekrar deneyiniz.");
				}

			} while (secim != "1" && secim != "2");

			Console.WriteLine();


			int girisHakki = 2;

			while (girisHakki >= 0)
			{
				Console.Write("Şifrenizi giriniz:");
				string sifre = Console.ReadLine();

				if (sifre == "ab18")
				{
					Console.WriteLine("Giriş başarılı. Ana menüye yönlendiriliyorsunuz.");
					Console.WriteLine("------------------------------------");
					Console.WriteLine("ANA MENÜ");
					Console.WriteLine();
					break;
				}
				else
				{
					Console.WriteLine("Hatalı giriş yaptınız, tekrar deneyiniz. Kalan hak sayısı:" + girisHakki);
					girisHakki--;

					if (girisHakki == -1)
					{
						Console.WriteLine("Şifre 3 kez yanlış girildi. Sistemden çıkılıyor.");
					}
				}
			}

			while (true)
			{
				Console.WriteLine("1 - Para Çekme");
				Console.WriteLine("2 - Para Yatırma");
				Console.WriteLine("3 - Para Transferleri");
				Console.WriteLine("4 - Eğitim Ödemeleri");
				Console.WriteLine("5 - Ödemeler");
				Console.WriteLine("6 - Bilgi Güncelleme");
				Console.WriteLine("0 - Çıkış");
				Console.WriteLine("Lütfen yapmak istediğiniz işlemi tuşlayınız:");


				string secim1 = Console.ReadLine();
				switch (secim1)
				{
					case "1":
						Console.WriteLine("------------------------------------");
						Console.WriteLine("1 - PARA ÇEKME");
						Console.WriteLine();

						ParaCekme();
						break;

					case "2":
						Console.WriteLine("------------------------------------");
						Console.WriteLine("2 - PARA YATIRMA");
						Console.WriteLine();

						ParaYatirma();
						break;
					

					case "3":
						Console.WriteLine("------------------------------------");
						Console.WriteLine("3 - PARA TRANSFERLERİ");
						Console.WriteLine();

						ParaTransfer();
						break;
						

					case "4":
						Console.WriteLine("------------------------------------");
						Console.WriteLine("4 - EĞİTİM ÖDEMELERİ");
						Console.WriteLine();

						Console.WriteLine("Bu sayfa arızalıdır.");
						Console.WriteLine();

						AltMenu();
						break;

					case "5":
						Console.WriteLine("------------------------------------");
						Console.WriteLine("5 - ÖDEMELER");
						Console.WriteLine();

						Odemeler();
						break;

					case "6":
						Console.WriteLine("------------------------------------");
						Console.WriteLine("6 - BİLGİ GÜNCELLEME");
						Console.WriteLine();
						
						BilgiGuncelle();
						break;

					case "0":
						Console.WriteLine("------------------------------------");
						Console.WriteLine("Çıkış yapılıyor...");
						return;

					default:
						Console.WriteLine("------------------------------------");
						Console.WriteLine("Hatalı seçim yaptınız.");
						break;
				}
			}
		}



		static void Odemeler()
		{

			double bakiye = 250;

			while (true)
			{
				Console.WriteLine("1 - Elektrik Faturası");
				Console.WriteLine("2 - Telefon Faturası");
				Console.WriteLine("3 - İnternet Faturası");
				Console.WriteLine("4 - Su Faturası");
				Console.WriteLine("5 - OGS Ödemeleri");

				Console.WriteLine("9 - ANA MENÜ");
				Console.WriteLine("0 - ÇIKIŞ");
				Console.WriteLine("Lütfen yapmak istediğiniz işlemi tuşlayınız:");

				
				string secim10 = Console.ReadLine();
				switch (secim10)
				{
					case "1":
						Console.WriteLine("Elektrik faturası tutarını giriniz:");
						double elektrikFaturasi = Convert.ToDouble(Console.ReadLine());

						if (bakiye >= elektrikFaturasi)
						{
							bakiye = bakiye - elektrikFaturasi;
							Console.WriteLine("Elektrik faturası için ödeme yapıldı. Güncel bakiyeniz:" + bakiye);
							AltMenu();
							break;
						}
						else
						{
							Console.WriteLine("Bakiye yetersiz. İşlem gerçekleştirilemiyor!");
							AltMenu();
							break;
						}
				
					case "2":

						Console.WriteLine("Telefon faturası tutarını giriniz:");
						double telefonFaturasi = Convert.ToDouble(Console.ReadLine());

						if (bakiye >= telefonFaturasi)
						{
							bakiye = bakiye - telefonFaturasi;
							Console.WriteLine("Telefon faturası için ödeme yapıldı. Güncel bakiyeniz:" + bakiye);
							AltMenu();
							break;
						}
						else
						{
							Console.WriteLine("Bakiye yetersiz. İşlem gerçekleştirilemiyor!");
							AltMenu();
							break;
						}

					case "3":

						Console.WriteLine("İnternet faturası tutarını giriniz:");
						double internetFaturasi = Convert.ToDouble(Console.ReadLine());

						if (bakiye >= internetFaturasi)
						{
							bakiye = bakiye - internetFaturasi;
							Console.WriteLine("İnternet faturası için ödeme yapıldı. Güncel bakiyeniz:" + bakiye);
							AltMenu();
							break;
						}
						else
						{
							Console.WriteLine("Bakiye yetersiz. İşlem gerçekleştirilemiyor!");
							AltMenu();
							break;
						}

					case "4":

						Console.WriteLine("Su faturası tutarını giriniz:");
						double suFaturasi = Convert.ToDouble(Console.ReadLine());

						if (bakiye >= suFaturasi)
						{
							bakiye = bakiye - suFaturasi;
							Console.WriteLine("Su faturası için ödeme yapıldı. Güncel bakiyeniz:" + bakiye);
							AltMenu();
							break;
						}
						else
						{
							Console.WriteLine("Bakiye yetersiz. İşlem gerçekleştirilemiyor!");
							AltMenu();
							break;
						}

					case "5":

						Console.WriteLine("OGS için ödeme tutarını giriniz:");
						double ogsOdeme = Convert.ToDouble(Console.ReadLine());

						if (bakiye >= ogsOdeme)
						{
							bakiye = bakiye - ogsOdeme;
							Console.WriteLine("OGS için ödeme yapıldı. Güncel bakiyeniz:" + bakiye);
							AltMenu();
							break;
						}
						else
						{
							Console.WriteLine("Bakiye yetersiz. İşlem gerçekleştirilemiyor!");
							AltMenu();
							break;
						}

					case "9":
						Console.WriteLine("------------------------------------");
						Console.WriteLine("ANA MENÜ");
						break;

					case "0":
						Console.WriteLine("Çıkış yapılıyor.");
						Environment.Exit(0);
						break;

					default:
						Console.WriteLine("Hatalı seçim yaptınız.");
						break;
				}
				break;
			}
		}

		/// <summary>
		/// Bu metot, para çekme ile ilgili işlemleri gerçekleştirir.
		/// </summary>
		static void ParaCekme()
		{
			Console.Write("Çekilecek para tutarını giriniz:");
			double cekilecekParaTutari = Convert.ToDouble(Console.ReadLine());


			if (cekilecekParaTutari <= bakiye)
			{
				bakiye = bakiye - cekilecekParaTutari;
				Console.WriteLine("Güncel bakiyeniz:" + bakiye);

			}
			else
			{
				Console.WriteLine("Yetersiz bakiye! Para çekme işlemi gerçekleştirilememektedir.");

			}
			Console.WriteLine();
			AltMenu();
		}

		/// <summary>
		/// Bu metot, para yatırma ile ilgili işlemleri gerçekleştirir.
		/// </summary>
		static void ParaYatirma()
		{
			while (true)
			{
				Console.WriteLine("1 - Kredi Kartına");
				Console.WriteLine("2 - Kendi Hesabına");
				Console.WriteLine("9 - ANA MENÜ");
				Console.WriteLine("0 - ÇIKIŞ");
				Console.WriteLine("Lütfen yapmak istediğiniz işlemi tuşlayınız:");

				string secim3 = Console.ReadLine();
				if (secim3 == "1")
				{
					Console.WriteLine("---- 1 - Kredi Kartına----");
					Console.Write("Kart numarasını giriniz (En az 12 haneli olacak şekilde): ");
					string kartNo = Console.ReadLine();

					if (kartNo.Length >= 12)
					{
						Console.Write("Yatırılacak para tutarını giriniz:");
						double yatirilacakParaTutari = Convert.ToDouble(Console.ReadLine());

						if (bakiye >= yatirilacakParaTutari)
						{
							bakiye = bakiye - yatirilacakParaTutari;
							Console.WriteLine("Para kredi kartına yatırıldı. Güncel bakiyeniz:" + bakiye);
							Console.WriteLine();
							AltMenu();
							break;
						}
						else
						{
							Console.WriteLine("Bakiye yetersiz. İşlem gerçekleştirilemiyor!");
							Console.WriteLine();
							AltMenu();
							break;
						}
					}
					else
					{
						Console.WriteLine("Geçersiz kart numarası.");
						Console.WriteLine();
						AltMenu();
						break;
					}

				}
				else if (secim3 == "2")
				{
					Console.WriteLine("---- 2 - Kendi Hesabına ----");
					Console.Write("Yatırılacak para tutarını giriniz:");
					double yatirilacakParaTutari1 = Convert.ToDouble(Console.ReadLine());
					bakiye = bakiye + yatirilacakParaTutari1;
					Console.WriteLine("Para kendi hesabınıza yatırıldı. Güncel bakiyeniz:" + bakiye);
					AltMenu();
					break;
				}
				else if (secim3 == "9")
				{
					Console.WriteLine("------------------------------------");
					Console.WriteLine("ANA MENÜ");
					break;
				}
				else if (secim3 == "0")
				{
					Console.WriteLine("Çıkış yapılıyor...");
					Environment.Exit(0);
				}
			}
		}

		/// <summary>
		/// Bu metot, para transferi ile ilgili işlemleri gerçekleştirir.
		/// </summary>
		static void ParaTransfer()
		{
			while (true)
			{
				Console.WriteLine("1 - Başka Hesaba EFT ");
				Console.WriteLine("2 - Başka Hesaba Havale");
				Console.WriteLine("9 - ANA MENÜ");
				Console.WriteLine("0 - ÇIKIŞ");
				Console.WriteLine("Lütfen yapmak istediğiniz işlemi tuşlayınız:");

				string secim5 = Console.ReadLine();
				if (secim5 == "1")
				{
					Console.WriteLine("---- 1 - EFT ----");
					Console.Write("IBAN NO giriniz (TR ile başlayan 12 haneli numara):");
					string ibanNo = Console.ReadLine();

					if (ibanNo.StartsWith("TR") && ibanNo.Length == 12)
					{
						Console.Write("Gönderilecek para tutarını giriniz:");
						double gonderilecekParaTutari = Convert.ToDouble(Console.ReadLine());

						if (bakiye >= gonderilecekParaTutari)
						{
							bakiye = bakiye - gonderilecekParaTutari;
							Console.WriteLine("EFT ile para transferi gerçekleştirildi. Güncel bakiyeniz:" + bakiye);
							Console.WriteLine();
							AltMenu();
							break;
						}
						else
						{
							Console.WriteLine("Bakiye yetersiz. İşlem gerçekleştirilemiyor!");
							Console.WriteLine();
							AltMenu();
							break;

						}
					}
					else
					{
						Console.WriteLine("Geçersiz IBAN NO.");
						Console.WriteLine();
						AltMenu();
						break;
					}
				}
				else if (secim5 == "2")
				{
					Console.WriteLine("---- 2 - Havale ----");
					Console.Write("Hesap numarasını giriniz (11 haneli):");
					string hesapNo = Console.ReadLine();

					if (hesapNo.Length == 11)
					{
						Console.Write("Gönderilecek para tutarını giriniz:");
						double gonderilecekParaTutari1 = Convert.ToDouble(Console.ReadLine());

						if (bakiye >= gonderilecekParaTutari1)
						{
							bakiye = bakiye - gonderilecekParaTutari1;
							Console.WriteLine("Havale ile para transferi gerçekleştirildi. Güncel bakiyeniz:" + bakiye);
							Console.WriteLine();
							AltMenu();
							break;
						}
						else
						{
							Console.WriteLine("Bakiye yetersiz. İşlem gerçekleştirilemiyor!");
							Console.WriteLine();
							AltMenu();
							break;
						}
					}
					else
					{
						Console.WriteLine("Geçersiz hesap numarası.");
						Console.WriteLine();
						AltMenu();
						break;
					}
				}
				else if (secim5 == "9")
				{
					Console.WriteLine("------------------------------------");
					Console.WriteLine("ANA MENÜ");
					break;
				}
				else if (secim5 == "0")
				{
					Console.WriteLine("Çıkış yapılıyor...");
					Environment.Exit(0);
				}
			}
		}




		static void AltMenu()
		{
			Console.WriteLine("9 - ANA MENÜ");
			Console.WriteLine("0 - ÇIKIŞ");
			Console.WriteLine("Lütfen yapmak istediğiniz işlemi tuşlayınız:");
			string secim4 = Console.ReadLine();
			
				if (secim4 == "9")
				{
					Console.WriteLine("------------------------------------");

					Console.WriteLine("ANA MENÜ");
				
				}
				else if (secim4 == "0")
				{
					Console.WriteLine("Çıkış yapılıyor...");
					Environment.Exit(0);
				}
		}

		static void BilgiGuncelle()
		{
			while (true)
			{
				Console.WriteLine("1 - Şifre Değiştir");
				Console.WriteLine("9 - ANA MENÜ");
				Console.WriteLine("0 - ÇIKIŞ");
				Console.WriteLine("Lütfen yapmak istediğiniz işlemi tuşlayınız:");

				string secim12 = Console.ReadLine();

				if (secim12 == "1")
				{
					Console.WriteLine("Mevcut şifrenizi giriniz: ");
					string mevcutSifre = Console.ReadLine();

					if (mevcutSifre == sifre)
					{
						Console.WriteLine("Yeni şifre: ");
						sifre = Console.ReadLine();
						Console.WriteLine("Şifre güncellendi.");
						AltMenu();
						break;
					}
					else
					{
						Console.WriteLine("Şifre yanlış!");
						AltMenu();
						break;
					}
				}
				else if (secim12 == "9")
				{
					Console.WriteLine("------------------------------------");
					Console.WriteLine("ANA MENÜ");
					break;
				}
				else if (secim12 == "0")
				{
					Console.WriteLine("Çıkış yapılıyor...");
					Environment.Exit(0);
				}
			}
		}
	}
}
