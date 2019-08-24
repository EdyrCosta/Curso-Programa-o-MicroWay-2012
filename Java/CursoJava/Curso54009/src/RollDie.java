//importação das bibliotecas
import java.util.Random;

//classe
public class RollDie
{
    //main
    public static void main(String[] args)
    {
        //Gerador de números aleatórios
        Random rndNum = new Random();
        int frequency[] = new int[7]; //array de contadores de frequencia
        
        //lança os dados 6000 vezes; utiliza o valor do dado como índice de frequência
        for(int roll = 1; roll <6000; roll++)
            ++frequency[1 + rndNum.nextInt(6)];
        
        System.out.printf(" %s%10s \n", "Face", "Frequency");
        
        //gera a saída do valor de cada elemento do array
        for(int face = 1; face < frequency.length; face++)
            System.out.printf("%4d%10d\n", face, frequency[face]);
    }
}