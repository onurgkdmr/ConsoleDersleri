namespace _260129_7_ters_dik_ucgen_for
{
    internal class Program
    {
        static void Main(string[] args)
        {
            // for ile * karakteri kullanarak ters dik üçgen yapınız.
            /*
			
                    * 
                   ** 
                  ***  
                 ****  
                ***** 
               ****** 
              *******     
             ******** 
            ********* 
            
            */


            string metin = "*";

            for (int i = 0; i < 15; i++)
            {
                for (int j =15; j > i; j--)
                {
                    Console.Write(" "); 
                }
                Console.WriteLine(metin);
                metin += "*";
            }
		}
	}
}
