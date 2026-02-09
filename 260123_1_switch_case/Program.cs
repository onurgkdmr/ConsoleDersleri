namespace _260123_1_switch_case
{
    internal class Program
    {
        static void Main(string[] args)
        {
            // switch - case karar yapısı sadece eşitlik durumunda çalışır.

            int sayi = 0;

            switch(sayi) // Değişken için sadece tanımlama işlemi yapılır. Burada tanımlanan değişken, herhangi bir karşılaştırma operatörü ile kullanılamaz. Sadece case'ler için hangi
						 // değişkenin kullanılacağı belirtilir.
			{
				case 1: // sayi değişkeni 1'e eşit olduğunda buradaki kodlar okunur.
                    
                    // Kod alanı
                    break; // sayi=1 için son.

                case 2:

                    // Kod alanı
                    break; // Her bir case bir break ile sonlandırılır.
                
                default: // Bir değer almaz. Eğer case'lerde verilen değer sayi değişkeninde yoksa default kısmındaki kodlar okunur. if - else yapısındaki else gibi çalışır.

                    // Kod alanı
                    break; // default için son.

                case 56: 
                    // 56 için kodlar
                    break; 
            }

            string metin = "merhaba";

            switch(metin)
            {
                default:
                    break;

                case "hello":
                case "mrb":
                case "":
                    // 3 case 1 break ile sonlandırıldı.
                    break;

                case "slaw":
                    break;

                case "hallo":
                    break;
            }
        }
    }
}
