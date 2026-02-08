namespace _260116_1_Atama_Operatorleri
{
    internal class Program
    {
        static void Main(string[] args)
        {
            /*
             
             Atama Operatörleri:
            += (Topla ve eşitle)
            -= (Çıkart ve eşitle)
            *= (Çarp ve eşitle)
            /= (Böl ve eşitle)
            %= (Mod al ve eşitle)
            ++ (1 Arttır)
            -- (1 Azalt)
            +  (String olarak birleştir)
             
            */

            int sayi1 = 900;
            // Kodun içinde herhangi bir yerde sayi1'e yeni değer eklenmesi gerekirse;
            // int yeniSayi1 = sayi1 + 10;
            // sayi1 artık yeniSayi1 olarak devam edecek.

            // Kod ilerledi ve sayi1 için yeni bir işlem gerekli oldu. Örneğin %20 arttırılmak istenirse;

            // int yeniSayi2 = yeniSayi1 + yeniSayi1 * 20 / 100;
            // yeniSayi1 artık yeniSayi2 olarak devam edecek.

            // Bu şekilde işlem yapmak yerine atama operatörleri ile değişken sayısını arttırmadan aynı işlemleri yapabiliriz.
            sayi1 += 10;
            sayi1 += sayi1 * 20 / 100;
            Console.WriteLine(sayi1);

            int sayi2 = 100;
            // sayi2 değerini 5 ile çarpım sonucunu atama operatörü ile hesaplarsak;
            sayi2 *= 5;
            Console.WriteLine("sayi2 değerinin 5 ile çarpım sonucu:" + sayi2);

            int sayi3 = 450;
            // sayi3 değerini atama operatörü ile 9'a bölersek;
            sayi3 /= 9;
			Console.WriteLine("sayi3 değerinin 9 ile bölünmesi sonucu:" + sayi3);

            int sayi4 = 845;
            // sayi4 değerinin 9 ile bölünmesinde kalan sonucu atama operatörü ile hesaplarsak;
            sayi4 %= 9;
            Console.WriteLine("sayi4 değerinin 9 ile bölünmesinde kalan sonuç:" + sayi4);

            /*
            ++
            --
            +             
            operatörlerinin kullanımı
            */

            int deger1 = 10;
            deger1++; // deger1'in değeri 1 arttırılır.
            Console.WriteLine("deger1=10 değeri ++ ile arttırıldı:" + deger1);
            deger1 += 1; // deger1++ ile aynı işlemi yapar.
			Console.WriteLine("deger1=10 değeri +=1 ile arttırıldı:" + deger1);

            int deger2 = ++deger1; // deger1'in değeri 1 arttırılır ve deger2'ye atanır.
            Console.WriteLine("++deger1:" + deger2);

            // int deger3 = deger2++ + 10; // Önce deger2 değeri deger3'e eşitlenir ve sonra ++ işlemi deger2'ye uygulanır.
            int deger3 = ++deger2 + 10; // deger2'nin değeri 1 arttırılır ve 10 ile toplanarak deger3'e atanır. Değer artımı yapılarak eşitleme sağlanır.
            Console.WriteLine("deger3 için:"+ deger3);

            // **************************************************************************

            int s1 = 10;
            int s2 = 20;
            int toplam = s1 + s2; // Cevap:30

            Console.WriteLine("Hesaplanan toplam:" + toplam);
            Console.WriteLine("String toplam:" + s1 + s2); // Cevap:1020
			Console.WriteLine("Parantez toplam:" + (s1 + s2)); // Cevap:30
			Console.WriteLine("Çarpım:" + s1 * s2); // Cevap:200
			Console.WriteLine("Parantez fark:" + (s1 - s2)); // Cevap:-10
			Console.WriteLine("Bölme:" + s1 / s2); // Cevap:0. Çünkü double kullanmadık. Bu da asıl cevap olan 0.5'i veremeyecek demektir.
			Console.WriteLine("Mod Alma:" + s1 % s2); // Cevap:
			Console.WriteLine("------------------------------------------------");
			Console.WriteLine(s1 + s2); // Cevap:30. Çünkü + işleminden önce string bir ifade yok.
			Console.WriteLine("" + s1 + s2); // Cevap:1020. Çünkü + işleminden önce string bir ifade ("") var.

            // ---------------------------------------------------------------------------

            // Bölme işlemi için bazı notlar:

            // 10/2 = 5 ise 10 sayısı 2'nin bir katıdır diyebiliriz.

            // 14125 sayısı için => 2,3,5,11 ve 53 sayılarının katı mıdır diye bakalım.
            int kat1 = 14125;

            Console.WriteLine("14125 değeri 2'nin katı mıdır?:" + kat1 % 2);
			Console.WriteLine("14125 değeri 3'ün katı mıdır?:" + kat1 % 3);
			Console.WriteLine("14125 değeri 5'in katı mıdır?:" + kat1 % 5);
			Console.WriteLine("14125 değeri 11'in katı mıdır?:" + kat1 % 11);
			Console.WriteLine("14125 değeri 53'ün katı mıdır?:" + kat1 % 53);









		}
	}
}
