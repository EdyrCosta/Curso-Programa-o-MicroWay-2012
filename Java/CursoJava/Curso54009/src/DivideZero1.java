import java.util.InputMismatchException;
import java.util.Scanner;

public class DivideZero1
{
    //demonstra o lan�amento de uma exce��o quando ocorre uma divis�o por zero
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
                System.err.printf("\nExce��o: %s\n", ex);
                scanner.nextLine(); //descarta a entrada para o usu�rio tentar novamente
                System.out.println("Voc� tem que entrar com n�meros inteiros. Por favor tente novamente.\n");
            }
            catch(ArithmeticException ex)
            {
                System.err.printf("\nExce��o: %s\n", ex);
                scanner.nextLine(); //descarta a entrada para o usu�rio tentar novamente
                System.out.println("Zero � um denominador inv�lido. Por favor tente novamente.\n");                
            }
            catch(Exception ex)
            {
                System.err.printf("\nExce��o: %s\n", ex);
                scanner.nextLine(); //descarta a entrada para o usu�rio tentar novamente                
            }
        }
        while(continueLoop);
    }
}
