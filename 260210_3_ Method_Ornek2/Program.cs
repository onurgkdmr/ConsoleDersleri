namespace _260210_3__Method_Ornek2
{
    internal class Program
    {
        static void Main(string[] args)
        {
            // Kullanıcıdan alınan 3 sayının küçükten büyüğe doğru sıralamasını yapan işlemi kodlayınız.

            int s1 = SayiAl();
			int s2 = SayiAl();
			int s3 = SayiAl();

			// s1 en büyük ise (s1=x)
			Siralama(s1, s2, s3);

			// s2 en büyük ise (s2=x)
			Siralama(s2, s1, s3);

			// s3 en büyük ise (s3=x)
			Siralama(s3, s1, s2);

			#region my code but not short
			/*
			if (sayi1 > sayi2 && sayi1 > sayi3) // sayi1 en büyük ise
			{
				if (sayi2 > sayi3)
				{
					Console.WriteLine(sayi1 + "=>" + sayi2 + "=>" + sayi3);
				}
				else if (sayi3 > sayi2)
				{
					Console.WriteLine(sayi1 + "=>" + sayi3 + "=>" + sayi2);
				}
				else
				{
					Console.WriteLine(sayi1 + "=>" + sayi3 + "=" + sayi2);
				}
			}

			else if (sayi2 > sayi1 && sayi2 > sayi3) // sayi2 en büyük ise
			{
				if (sayi1 > sayi3)
				{
					Console.WriteLine(sayi2 + "=>" + sayi1 + "=>" + sayi3);
				}
				else if (sayi3 > sayi1)
				{
					Console.WriteLine(sayi2 + "=>" + sayi3 + "=>" + sayi1);
				}
				else
				{
					Console.WriteLine(sayi2 + "=>" + sayi3 + "=" + sayi1);
				}
			}
			*/
			#endregion



		}

		/// <summary>
		/// int sayıyı kullanıcıdan alır.
		/// </summary>
		/// <returns></returns>
		static int SayiAl()
        {
            Console.WriteLine("Sayı giriniz:");
			return Convert.ToInt32(Console.ReadLine());
		}

		/// <summary>
		/// 3 sayı arasında sıralama yapar.
		/// </summary>
		/// <param name="x"></param>
		/// <param name="y"></param>
		/// <param name="z"></param>
        static void Siralama(int x,int y,int z)
        {
			if (x > y && x > z) // x en büyük ise
			{
				if (y > z)
				{
					Console.WriteLine(x + ">" + y + ">" + z);
				}
				else if (z > y)
				{
					Console.WriteLine(x + ">" + z + ">" + y);
				}
				else
				{
					Console.WriteLine(x + ">" + z + "=" + y);
				}
			}
		}
	}
}
