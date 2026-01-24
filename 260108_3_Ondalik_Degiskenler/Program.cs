namespace _260108_3_Ondalik_Degiskenler
{
    internal class Program
    {
        static void Main(string[] args)
        {
            // Ondalık sayılar için veri tipleri: float, double, decimal

            float floatSayi = 45.45f;  // DI kütüphanelerinde yani çizim için kulanılan veri tipi
            // float için ondalık sayı yazılırsa sayının sonunda f yazılması istenir.

            float floatTamSayi = 9000;  // Tam sayı değeri alır ve sayının sonunda hassasiyet için f yazmaya gerek yoktur.


            // double genelde finan işlemlerinde kullanılır.
            double doubleSayi = 34.56;  // double için ondalık sayı yazılırsa sayının sonunda d yazmak zorunlu değildir. İsterse yazılabilir.


            decimal decimalSayi = 67.89m;  // decimal için ondalık sayı yazılırsa sayının sonunda m yazılması istenir.
            // decimal bilimsel işlemlerde kullanılır (Gezegen mesafeleri hesabı, proton, elektron,... hesaplaması vs.).



        }
    }
}
