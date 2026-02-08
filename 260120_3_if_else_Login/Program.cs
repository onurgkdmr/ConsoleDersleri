namespace _260120_3_if_else_Login
{
    internal class Program
    {
        static void Main(string[] args)
        {
            // Kullanıcıdan bir web sitesinin login sayfasındaki giriş ekranı için kullanıcı adı ve şifre isteyiniz ve bu sistemi kodlayarak tasarlayınız.
            // Kullanıcı Adı : admin
            // Şifre : ab?0

            BASLA:

            Console.WriteLine("Kullanıcı adınızı giriniz:");
            string kullaniciAdi=Console.ReadLine();

			Console.WriteLine("Şifrenizi giriniz:");
			string sifre = Console.ReadLine();

            if (kullaniciAdi=="admin" && sifre=="ab?0")
            {
                Console.WriteLine("Giriş başarılı.");
                Console.WriteLine("!!! Hoşgeldiniz !!!");
            }
            else
            {
                Console.WriteLine("Kullanıcı adı veya şifre hatalı, tekrar deneyiniz.");
                goto BASLA;
            }

		}
	}
}
