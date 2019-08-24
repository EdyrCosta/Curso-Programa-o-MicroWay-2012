public class InitArray2
{
    public static void main(String[] args)
    {
        final int ARRAY_LENGHT = 10;
        int array[] = new int[ARRAY_LENGHT];
        
        for(int i=0; i <array.length; i++)
            array[i] =  2+2 * i;
        
        System.out.printf("%s%8sa\n", "Início", "Valor");
        
        for(int i=0; i<array.length; i++)
            System.out.printf(" %5d%8d\n", i, array[i]);
    }
}