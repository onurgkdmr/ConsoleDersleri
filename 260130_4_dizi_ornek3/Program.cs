namespace _260130_4_dizi_ornek3
{
    internal class Program
    {
        static void Main(string[] args)
        {
            double[] dizi = new double[6];

            // 6 elemanı ekleyip eklenen elemanları ekranda gösteriniz.

            //dizi[0] = 10;
            //dizi[1] = 20;
            //dizi[2] = 20;
            //dizi[3] = 20;
            //dizi[4] = 20;
            //dizi[5] = 20;

            for (int i = 0; i < dizi.Count(); i++)
            {
                Console.WriteLine(i + 1 + ". elemanı giriniz:");
                dizi[i]=Convert.ToDouble(Console.ReadLine());
            }

            for (int i = 0; i < dizi.Length; i++)
            {
                Console.WriteLine(i + 1 + ". eleman:" + dizi[i]);
            }
		}
	}
}
