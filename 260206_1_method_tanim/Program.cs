namespace _260206_1_method_tanim
{
    internal class Program
    {
        static void Main(string[] args)
        {

			//string[] => string bir dizi. int[],double, ArrayList,... vs. olabilir.
			//args=> değişken (method için parametre diyebiliriz). dizi, sayilar, isimler, sehirler vs. olabilir.
			//Main(string[] args)=> string bir dizisi olan Main adında method(function)->Topla, Fark, MaasZam, GetirKisiBilgileri vs. olabilir.
			//void=> method türü->int, double,... (var dışında bütün veri tipleri kullanılabilir)
			//static=> Erişim belirleyicisi. Bir yapıya (değişken , method, class) erişim yani kullanmak için izin olun olmadığını Erişim Belirleyicileri(internal, static,public,
            //private, protected, protected internal) ile sağlarız
			//Method Nedir??=> Sürekli kodlanan bir kod varsa bu kodu sürekli kodlamak yerine onu bir format ile sürekli kullanabileceğimiz halde tutmak için Method içinde kodlarız
            //ve her lazım olduğunda Method çağırmak yeterli olacaktır, artık aynı kodu tekrar tekrar yazmaya gerek yoktur.
			
            //Aşağıdaki yapıyı method ile yapalım

			Console.WriteLine("1. sayıyı giriniz:");
            int sayi1 = Convert.ToInt32(Console.ReadLine());

			Console.WriteLine("2. sayıyı giriniz:");
			int sayi2 = Convert.ToInt32(Console.ReadLine());

            //int toplam = sayi1 + sayi2;
            //Console.WriteLine("2 sayının toplamı:" + toplam);

            // Bu işlemi method ile yaparsak: 

            Console.WriteLine();
            Toplam(sayi1, sayi2);

            // Bu 2 sayıdan büyük olanı küçükten çıkartırsak ve Fark adında bir method ile kodlarsak:

            Fark(sayi1, sayi2);

            // Büyük sayıya küçük sayının bölünmesi sonucu kalanı veren ModAl adında bir method kodlarsak:

            ModAl(sayi1, sayi2);

			// CTRL + M + O => Bütün methodları gizler.
			// CTRL + M + L => Bütün methodları gösterir.
			// CTRL + K + D => Kodda hata yoksa düzenleme işlemi yapar. Hata varsa düzenlemez.

			/*

			 Erişim Belirleyicileri
			1-public => herkese açık
			2-private=> özel, sadece tanımlandığı yerde kullanılabilir
			3-internal=> aynı proje altında kullanılabilir
			4-protected=> kalıtım verdiği class larda kullanılabilir
			5-internal protected=> aynı proje altında ve kalıtım verdiği class larda kullanılabilir
			6-static=> tanımlama yapmadan direk kullanma imkanı sağlar
			
            NOT: class'lar konusunda Erişim belirleyicileri ayrıntılı bir şekilde incelenecektir.

			//***************************************************************

			Method çeşitleri:

			1-Değer döndürmeyen void method
			2-Değer döndüren return method
			3-Aşırı yüklenmiş Overload method

			 */

		}

		/// <summary>
		/// 2 sayının toplamını hesaplar.
		/// </summary>
		/// <param name="s1"></param>
		/// <param name="s2"></param>
		static void Toplam(int s1,int s2)
        { 
            int toplam = s1 + s2;
            Console.WriteLine("2 sayının toplamı:" + toplam);
        }

        /// <summary>
        /// 2 sayının farkını hesaplar.
        /// </summary>
        /// <param name="d1"></param>
        /// <param name="d2"></param>
        static void Fark(int d1,int d2)
        {
            int farkHesapla;
            
            if (d1>d2)
            {
				farkHesapla = d1 - d2;
			}
            else
            {
                farkHesapla = d2 - d1;
			}

            Console.WriteLine("Büyük olan sayıdan küçük sayı çıkartıldı ve sonuç:" + farkHesapla);
		}

        /// <summary>
        /// 2 sayının modunu hesaplar.
        /// </summary>
        /// <param name="d1"></param>
        /// <param name="d2"></param>
        static void ModAl(int d1,int d2)
        {
            int kalanHesapla;
            if (d1>d2)
            {
                kalanHesapla = d1 % d2;
            }
            else
            {
                kalanHesapla = d2 % d1;
            }

            Console.WriteLine("Büyük sayıya küçük sayının bölünmesi sonucu kalan:" + kalanHesapla);
        }
    }
}
