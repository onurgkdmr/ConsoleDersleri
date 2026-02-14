namespace _260129_6_for_dik_ucgen_ters_say
{
    internal class Program
    {
        static void Main(string[] args)
        {

			// Dik üçgenin karakter sayısı max. alınacak şekilde max. değerden 0'a doğru aynı satırda yazdırınız.

			string yildiz = "*";

			for (int i = 1; i < 10; i++)
			{
				Console.Write(yildiz + " " + "=>");
				int adet = yildiz.Length;

				for (int j = adet; j >= 0; j--)
				{
					Console.Write(j + ",");
					
				}
				Console.WriteLine();
				yildiz = yildiz + "*";
			}
			
		}
    }
}
