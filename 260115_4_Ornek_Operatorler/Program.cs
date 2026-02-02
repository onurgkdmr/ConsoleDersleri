namespace _260115_4_Ornek_Operatorler
{
    internal class Program
    {
		static void Main(string[] args)
		{
			bool sonuc;

			sonuc = 14 >= 14;  //True
			Console.WriteLine("14 >= 14 sonuç:" + sonuc);

			sonuc = 14 >= 14 || (45 == 45);  //True
			Console.WriteLine("14 >= 14 || (45 == 45) sonuç:" + sonuc);

			sonuc = 14 >= 14 && (45 == 45 && "software" == "yazılım");  //False
			//-------True    && (   True  &&          False         )
			//-------True    && (            False                  )
			//-------True    &&    False
			//-------------False
			Console.WriteLine($"14 >= 14 && (45 == 45 && {"software"=="yazılım"}) sonuç:" + sonuc);


			// SORU-1:
			sonuc = 'a' != 'A' && (14 >= 4 || (DateTime.Now.Year == 2026 && true != false)); //İşlem sonucunu adım adım yazınız.
			//---------True    && ( True   || (         True             &&      True    ))
			//---------True    && ( True   || (                    True                  ))
			//---------True    && ( True   ||                      True                   )
			//---------True    &&                        True
			//----------------True
			Console.WriteLine("'a' != 'A' && (14 >= 4 || (DateTime.Now.Year == 2026 && true != false)) sonucu:" + sonuc);


			// SORU-2:
			sonuc = "Yaşar Kemal Van" != "Orhan Pamuk İstanbul" && ((14.5 == Convert.ToDouble("14.5") || false == true) && (double)45 == Convert.ToDouble("45")); // Adım adım çözümleri veriniz.
			//------------------------True                      && ((           True                  ||     False    ) &&               True                  )
			//------------------------True                      && ((                      True                       ) &&               True                  )
			//------------------------True                      && (                       True                         &&               True                  )
			//------------------------True                      &&                                         True 
			//-------------------------------------------------True
			Console.WriteLine("\"Yaşar Kemal Van\" != \"Orhan Pamuk İstanbul\" && ((14.5 == Convert.ToDouble(\"14.5\") || false == true) && (double)45 == Convert.ToDouble(\"45\")) sonucu:" + sonuc);
			//Sınıfta yapılan işlem=> Resül Hoca

		}	
	}
}
