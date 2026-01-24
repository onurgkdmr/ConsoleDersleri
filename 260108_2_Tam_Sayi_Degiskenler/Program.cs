namespace _260108_2_Tam_Sayi_Degiskenler
{
    internal class Program
    {
        static void Main(string[] args)
        {
            // Değişken nedir?

            byte yas = 35;  // 0-255 arası bir değer alır.
            short yil = 2026;  // -32768 ile 32767 arasında bir değer alır.
            int mesafeHakkari = 75000;  // Max. 10 basamaklı bir değer alır.
            long tcNo = 12345678901;  // Min. 11 basamaklı, max. 19 basamaklı bir değer alır.

            sbyte negatifByte = -89;
            ushort pozitifShort = 65535;  // 0-65535 arasında bir değer alır.
            uint pozitifInt = 4294967295;  // Max. 10 basamaklı bir değer alır. Min. değerı 0'dır.
            ulong pozitifLong = 18446744073709551615;  // 20 basamaklı bir değer  alır. Min. değeri 0'dır.

            // Başlarındaki u => usigned demektir. Sadece pozitif değer alırlar.

            // DEĞİŞKEN NEDİR?

            // Proje içinde data, değer,... taşımak için kullanılan kod yapılarıdır.

            Console.WriteLine(negatifByte);
            Console.WriteLine(mesafeHakkari);

            // Değişken yazma kuralları:
            
            // 1) Başında sayı olamaz.
            //int 1sayi1 = 900;  // Yanlış
            int sayi = 900;  // Doğru 

            // 2) Boşluk ve özel karakterler kullanılamaz. Özel karakterlerden sadece alt-tire (_) kullanılabilir.
            // int sayi 2 = 800;  // Kullanılamaz (Boşluk bırakılmış).
            // int sayi*2 = 800;  // Kullanılamaz.
            int sayi_2 = 800;  // Kullanılabilir.

            // 3) Türkçe karakterler kullanılamaz.
            int sayı3 = 899;  // Hata vermez ama kullanılamaz.
            // ş,İ,ü,ğ,ç,ö,ı gibi karakterler kullanılamaz.
            // s,I,u,g,c,o,i gibi karakterler kullanılabilir.




        }
    }
}
