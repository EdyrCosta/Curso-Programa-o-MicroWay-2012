public class InitArray
{
    public static void main(String[] args)
    {
        int array[]; //declara o array identificado
        
        array = new int[10];
        
        System.out.printf("%s%8s\n", "Índice", "Valor");
        
        //gera a saida do valor de cada elemento array
        for(int i =0; i<array.length; i++)
        {
            System.out.printf("%5d%8d\n", i, array[i]);
        }
    }
}