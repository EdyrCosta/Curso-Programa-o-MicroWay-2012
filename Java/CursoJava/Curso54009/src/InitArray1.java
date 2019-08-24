public class InitArray1
{
    public static void main(String[] args)
    {
        //lista de inicializadores especificava o valor de cada elemento
        int array[] = {32,27,64,18,95,14,90,70,60,37};
        
        System.out.printf("%s%8s\n", "Início", "Valor");
        
        for(int i =0; i<array.length; i++)
        {
            System.out.printf("%5d%8d\n", i, array[i]);
        }
    }
}