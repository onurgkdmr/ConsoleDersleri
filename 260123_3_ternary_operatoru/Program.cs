namespace _260123_3_ternary_operatoru
{
    internal class Program
    {
        static void Main(string[] args)
        {
            // ternary operatörü => if else yerine kullanılan ?: operatörleridir.
            // Kullanıcıdan alınan sayının pozitif mi negatif mi olduğunu ternary ile hesaplayalım.

            BASLA:
            Console.WriteLine("Sayı giriniz:");
            int sayi = int.Parse(Console.ReadLine());
            
            string sonuc;
            // sayi > 0 ? "Pozitif" : "Negatif" ;
            //   Koşul  ?   True    :   False   ;

            Console.WriteLine("--- if - else ile: ---");

            if (sayi > 0)
            {
                Console.WriteLine("Pozitif:"+sayi);
            }
            else
            {
                Console.WriteLine("Negatif:"+sayi);
			}

            Console.WriteLine("--- ternary ile ---");

            //Console.WriteLine(sayi > 0 ? "Pozitif:"+sayi : " Negatif:"+sayi);
            sonuc = sayi > 0 ? "Pozitif" : "Negatif";
            Console.WriteLine(sonuc + ":" + sayi);

            Console.WriteLine("------------------------------------------");
            goto BASLA;
            
		}
    }
}
