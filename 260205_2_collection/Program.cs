using System.Collections.ObjectModel;

namespace _260205_2_collection
{
    internal class Program
    {
        static void Main(string[] args)
        {
			//Collection kullanmak için using System.Collections.ObjectModel; kütüphanesini en üst taraf olan using alanına eklenmesi gereklidir
			Collection<string> list1 = new Collection<string>();//Çalışanların isimleri
			list1.Add("C#");


			List<int> sayilar = new List<int>();//Fabrika çalışan sırasını
			sayilar.Add(10);

			Collection<double> maaslar = new Collection<double>();//Maaşları  listelemek için kullanılabilir
			maaslar.Add(65125);
			maaslar.Add(35125);
			maaslar.Add(65100);
			maaslar.Add(95450);
			//foreach=> eleman sayısı belli olmayan Collection yapılar için listeleme yapar
			foreach (var item in maaslar)
			{
				Console.WriteLine(item);
			}
		}
    }
}
