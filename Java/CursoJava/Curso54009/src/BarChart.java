public class BarChart
{
    public static void main(String[] args)
    {
        int array[] = {0,0,0,0,0,0, 1,2,4,2,1};
        
        System.out.println("Classificação das Notas");
        
        for(int counter=0; counter<array.length; counter++)
        {
            //gera a saída do rótulo de barra ("00-09: ". "100: " )
            if(counter == 10)
                System.out.printf("%5d: ", 100);
            else
                System.out.printf("%02d-%02d: ",
                                  counter * 10, counter * 10 + 9);
            
            //imprime a barra de asterisco
            for(int stars = 0; stars < array[counter]; stars++)
                System.out.print("*");
            
            //imprime uma linha
            System.out.println();
        }
    }
}