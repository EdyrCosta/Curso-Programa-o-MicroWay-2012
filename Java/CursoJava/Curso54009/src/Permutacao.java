public class Permutacao
{
    //declaração recursiva do método permuteString
    public void permuteString(String beginningString, String endingString)
    {
        //caso básico: se a string de permuta tiver comprimento menor ou igual a
        //1 exibe apenas essa string concatenada com beginningString
        if(endingString.length() <= 1)
            System.out.println(beginningString + endingString);
        else //passo de recursão: permuta endingString
        {
            //para cada caractre em endingString
            for(int i = 0; i < endingString.length(); i++)
            {
                try
                {
                    //cria uma nova string de permuta eliminando o
                    //caractere no indice i
                    String newString = endingString.substring(0, i) +
                                       endingString.substring(i + 1);
                    //chama recursiva com uma nova string a ser permutada
                    //e uma string inicial a ser concatenada, que
                    //inclui o caractere ni indice i
                    permuteString(beginningString + endingString.charAt(i), newString);
                }
                catch(StringIndexOutOfBoundsException ex)
                {
                    ex.printStackTrace();
                }
            }
        }   
    }
}
