import java.util.InputMismatchException;
import java.util.Scanner;

public class DivideZero1
{
    //demonstra o lançamento de uma exceção quando ocorre uma divisão por zero
    public static int quociente(int numerador, int denominador) throws ArithmeticException
    {
        return numerador / denominador;
    }
    
    public static void main(String[] args)
    {
        Scanner scanner = new Scanner(System.in);
        boolean continueLoop = true;
        
        do
        {
            try
            {
                System.out.println("Por favor insira um numerador inteiro: ");
                int numerador = scanner.nextInt();
                System.out.println("Por favor insira um denominador inteiro: ");
                int denominador = scanner.nextInt();

                int resultado = quociente(numerador, denominador);
                System.out.printf("\nResultado: %d / %d = %d\n", numerador, denominador, resultado);    
                
                continueLoop = false;
            }
            catch(InputMismatchException ex)
            {
                System.err.printf("\nExceção: %s\n", ex);
                scanner.nextLine(); //descarta a entrada para o usuário tentar novamente
                System.out.println("Você tem que entrar com números inteiros. Por favor tente novamente.\n");
            }
            catch(ArithmeticException ex)
            {
                System.err.printf("\nExceção: %s\n", ex);
                scanner.nextLine(); //descarta a entrada para o usuário tentar novamente
                System.out.println("Zero é um denominador inválido. Por favor tente novamente.\n");                
            }
            catch(Exception ex)
            {
                System.err.printf("\nExceção: %s\n", ex);
                scanner.nextLine(); //descarta a entrada para o usuário tentar novamente                
            }
        }
        while(continueLoop);
    }
}
