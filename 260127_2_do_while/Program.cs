namespace _260127_2_do_while
{
    internal class Program
    {
        static void Main(string[] args)
        {
            // While döngüsü ilk olarak koşulu ele alır. Koşul doğru ise döngü içinde kodlar işleme alınır.
            // Do while 1 defa koşula bakmadan işlem yapar, sonra koşula bakar. Koşul doğru ise döngü içinde kodlar tekrar işleme alınır.

            /*
            while(true) // 1.Adım: Döngü içinde koşul ele alınır.
            {
                // 2.Adım: Kodlar işleme alınır.
            }

            do  // Do => Yap
                // Buraya kod yazılmaz.
            {
                // do while için kod alanı
                // 1.Adım: Döngü kodlarının yazıldığı bu alan 1 kez işleme alınır. 1 kez işleme alındıktan sonra aşağıdaki do yapısının döngü koşuluna bakılır.

            // Kod alanı bittiği aşağıdaki while yapısı ile anlaşılır.
            } while (true);  // 2.Adım: Koşul doğru ise tekrar kod alanına dönülür ve kodlar işleme alınır.
            */

            int sayi = 1;

            // while (sayi>0)
            // {
            //    Console.WriteLine("Sayı 0'dan büyüktür.");
            // }
            // Console.WriteLine("------ While ile SON ------");

            // ******************************************************************

            // do while

            Console.WriteLine("-******** do while ********-");
            do
            {
                Console.WriteLine("Sayı 0'dan büyüktür.");
            } while (sayi > 0);

            Console.ReadLine();
		}
	}
}
