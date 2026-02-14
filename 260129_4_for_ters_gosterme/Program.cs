namespace _260129_4_for_ters_gosterme
{
    internal class Program
    {
        static void Main(string[] args)
        {
            // 0-50 arasında her ekrana yazılacak sayı için büyükten küçüğe doğru 0'a kadar olacak şekilde ekranda gösteriniz.

            /*
            
            0-0
            1-1,0
            2-2,1,0
            3-3,2,1,0
            4-4,3,2,1,0
            5-5,4,3,2,1,0
            6
            7
            8
            .
            .
            .
            .
            50-50,49,48......4,3,2,1,0
            
            */

            for (int i = 0; i <= 50; i++)
            {
				Console.WriteLine(i+"=>");
                
                for (int j=i;  j>=0; j--)
                {
				    Console.Write(j+",");
				}
				Console.WriteLine("");
			}

		}
    }
}
