namespace _260127_3_do_while_ornek1
{
    internal class Program
    {
        static void Main(string[] args)
        {

			// 1) Kullanıcıdan alınan 5 sayıdan en büyük sayıyı hesaplayan yapıyı kodlayınız.
			// 2) Kullanıcıdan negatif sayı alana kadar girilen pozitif sayıların toplamını ve adetini hesaplayan do while yapısını kodlayınız.
			// 3) Kullanıcıdan 1-100 arasında sayı girmesini isteyiniz. Girilen sayı 1-100 arasında değil ise tekrar sayı girmesini isteyiniz.
			// Girilen sayı 1-100 arasında ise sayıyı ekranda gösteriniz ve 1-100 arasında 11 sayı girildikten sonra işlemi sonlandırıp girilen 
			// sayıların toplamını ekranda gösteriniz.
			// 4) Kullanıcı adı admin, şifresi 12?ab olan bir sistem için 3 defa giriş hakkı tanıyan do while sistemini kodlayınız.


			// SORU-1:

			int sayiAdeti = 0;
			int enbuyukSayi = 0;
			do
			{
				Console.WriteLine(sayiAdeti + 1 + ".sayıyı giriniz?");
				int sayi1 = Convert.ToInt32(Console.ReadLine());

				if (sayi1 > enbuyukSayi)
				{
					enbuyukSayi = sayi1;
				}
				sayiAdeti++;

			} while (sayiAdeti < 5);

			Console.WriteLine("Girilen sayılar içinde en büyük sayı:" + enbuyukSayi);


			// SORU-2: 


			int sayiAdeti1 = 0;
			int toplam = 0;
			int sayi;
			do
			{
				Console.WriteLine("Pozitif bir sayı giriniz:");
				sayi = Convert.ToInt32(Console.ReadLine());

				if (sayi>0)
				{
					toplam = toplam + sayi;
					sayiAdeti1++;
				}

			} while (sayi>0);

			Console.WriteLine("Sayı adeti:" + sayiAdeti1);
			Console.WriteLine("Sayıların toplamı:" + toplam);


			// SORU-3:

			int girilenSayi = 0;
			int toplam1 = 0;
			do
			{
				Console.WriteLine("1-100 arasında bir sayı giriniz:");
				int sayi3 = Convert.ToInt32(Console.ReadLine());

				if (!(sayi3 > 1 && sayi3 < 100))
				{
					Console.WriteLine("Tekrar sayı giriniz:");
				}
				else
				{
					Console.WriteLine("Girilen sayı:" + sayi3);
					toplam1 = toplam1 + sayi3;
					girilenSayi++;
				}
			} while (girilenSayi < 11);
			
			Console.WriteLine("Girilen sayıların toplamı:" + toplam1);


			// SORU-4:

			int girisHakki = 0;

			do
			{
				Console.WriteLine("Kullanıcı adınızı giriniz:");
				string kullaniciAdi = Console.ReadLine();

				Console.WriteLine("Şifrenizi giriniz:");
				string sifre = Console.ReadLine();

				if (kullaniciAdi!= "admin" || sifre!= "12?ab")
				{
					Console.WriteLine("Hatalı giriş yaptınız, tekrar deneyiniz:");
					girisHakki++;
				}
				else
				{
					Console.WriteLine("Giriş başarılı!");
					break;
				}
			} while (girisHakki < 3);
			
		}
	}
}
