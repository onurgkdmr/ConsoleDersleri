namespace _260115_3_Mantiksal_Operatorler
{
    internal class Program
    {
        static void Main(string[] args)
        {
            /*
            
            3) Mantıksal Operatörler: 
            and işareti => && (ve)
            or işareti => || (veya)
            -----------------------------------------------
            
            && => and (ve) için 2 işlem sorgusunda 4 değişik sorgu biçiminde çıkacak sonuçlar:

            true && true => true (and durumunda 2 koşul da true ise işlemin sonucu true olur.)
            true && false => false
            false && true => false
            false && false => false
            -----------------------------------------------
            
            || => or (veya) için 2 işlem sorgusunda 4 değişik sorgu biçiminde çıkacak sonuçlar:
            
            true || true => true 
            true || false => true 
            false || true => true 
            false || false => false (veya durumunda 2 koşul da false ise işlemin sonucu false olur. Diğer durumlarda cevap true olacaktır.)
             
             */

            bool sonuc = 10 > 5 && 20 > 15;
            //----------- true  &&   true
            //----------------- true 
            Console.WriteLine("10>5 && 20>15 işlem sonucu:" + sonuc);

            sonuc = 10 > 5 && 0 >= 2;
            //------- true &&  false
            //----------- false
            Console.WriteLine("10 > 5 && 0 >= 2 işlem sonucu:" + sonuc);

            sonuc = 10 > 5 || 0 >= 2;
            //------ true  ||  false
            //----------- true
            Console.WriteLine("10 > 5 || 0 >= 2 işlem sonucu:" + sonuc);
		}
	}
}
