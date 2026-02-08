namespace _260120_1_Tanim
{
    internal class Program
    {
        static void Main(string[] args)
        {
            // KARAR YAPILARI VE KOŞUL YAPILARI:
            // if - else, switch - case, ternary operatörü
            /*
            
            1) if - else => Eşitlik, karşılaştırma, oran,.... vs. durumlarda kullanılır.
            1.1) if - else
            1.2) if - else if - else
            2) switch - case => Eşitlik durumunda kullanılır.
            3) ternary operatörü => if - else durumunun kısaltılmış halidir.
             
            */

            if (true) // if içinde true yerine koşul yazılır (sayi==1, sayi>0, sayi<-10 vb.). Eğer bu koşul doğru ise if bloğundaki kodlar okunur.
            {
                // if blok kodları
            }
            else // else değil ise anlamına gelir. Bu da if için false (Hayır, koşul false sonucunu verdi.) demektir. False olması durumunda else bloğundaki kodlar okunur.
            {
                // else blok kodları
            }

            Console.WriteLine("Sayı giriniz:");
            int sayi1 = Convert.ToInt32(Console.ReadLine());

            if (sayi1> 0) // Evet, hayır için karar yeri
            // BURAYA KOD YAZILMAZ!
            {
                // Evet ise bu alan okunacaktır.
                Console.WriteLine("Sayı 0'dan büyüktür.");
            }
            // BURAYA KOD YAZILMAZ!
            else // BURAYA KOD YAZILMAZ, İŞARET KOYULMAZ!
		    // BURAYA KOD YAZILMAZ!
			{
				// Hayır ise bu alan okunacaktır.
				Console.WriteLine("Sayı 0'dan küçüktür.");
			}

		}
    }
}
