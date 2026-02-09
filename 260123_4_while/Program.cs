namespace _260123_4_while
{
    internal class Program
    {
        static void Main(string[] args)
        {
            /*
             
             Ardışık işlemleri koşula veya koşulsuz yapmak için döngüler kullanılır.
            1) while
            2) do while
            3) for
            4) foreach
             
            */

            int sayi = 0;
            // while (true);
            
            while (sayi<10) // 0<10, 1<10, 2<10, 3<10...., 9<10, 10<10 => FALSE (Döngü biter.)
            {
                // Döngü her true olduğunda bu alandaki kodlar okunacaktır.
                Console.Write(sayi + ","); // 0,1,2,3,....,9
                sayi++; // 1+1=2, 2+1=3 ...., 8+1=9, 9+1=10
                // sayi döngü için bir sayaçtır. Burada sayaç sürekli artırma işlemi yapacak.
            }

        }
    }
}
