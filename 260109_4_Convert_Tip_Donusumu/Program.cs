namespace _260109_4_Convert_Tip_Donusumu
{
    internal class Program
    {
        static void Main(string[] args)
        {
            // Bilgisayar dili string yani metindir (text).

            Console.WriteLine("Ekrana yazıyor");

            Console.WriteLine("Ekrana adınızı yazınız");
            string isim = Console.ReadLine();  // Read => Okumak, Line => Satır, çizgi, hat
            Console.WriteLine("Ekrana yazılan isim:" + isim);

            Console.WriteLine("Sayı giriniz:");
            string ekranaYazilanSayi= Console.ReadLine();
            Console.WriteLine("Sayı" + ekranaYazilanSayi);  // Bu işlemde ekranaYazilanSayi değişkeninin sayısal değere dönüştürülmesi gerekir. Çünkü şu an string yapıda.

            // Tip dönüşümü ile tipler kendi aralarında birbirine dönüştürülür.

            /* Tip dönüşümleri 4 başlık altında incelenecektir.
            1) Convert
            2) Parse
            3) Casting
            4) ToString()
            */

            Console.WriteLine("Bir sayı giriniz");
            int sayi1 = Convert.ToInt32(Console.ReadLine());

			Console.WriteLine("Bir sayı giriniz");
			int sayi2 = Convert.ToInt32(Console.ReadLine());

            int toplam = sayi1 + sayi2;
			Console.WriteLine("Girilen 2 sayının toplamı:" + toplam);


            // Tam sayılar için;
     
            byte s1= Convert.ToByte(Console.ReadLine());
            sbyte s2 = Convert.ToSByte(Console.ReadLine());
            short s3 = Convert.ToInt16(Console.ReadLine());
            ushort s4 = Convert.ToUInt16(Console.ReadLine());
            int s5 = Convert.ToInt32(Console.ReadLine());
            uint s6 = Convert.ToUInt32(Console.ReadLine()); 
            long s7 = Convert.ToInt64(Console.ReadLine());
            ulong s8 = Convert.ToUInt64(Console.ReadLine());

            // Ondalık sayılar için;

            float s9 = Convert.ToSingle(Console.ReadLine());
            double s10 = Convert.ToDouble(Console.ReadLine());
            decimal s11 = Convert.ToDecimal(Console.ReadLine());

            // Tarih veri tipi için;

            DateTime tarih = Convert.ToDateTime(Console.ReadLine());

            // Mantıksal veri tipi için;

            bool mantiksal = Convert.ToBoolean(Console.ReadLine());

            // Metinsel değişkenler için; 

            string metin1 = Convert.ToString(12);
            char metin2 = Convert.ToChar(Console.ReadLine());
		}
	}
}
