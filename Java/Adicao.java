import java.util.Scanner; //importando as bibliotecas necess�rias

public class Adicao
{
	public static void main(String[] args)
	{
		//cria um scanner para obter a entrada do usu�rio
		Scanner input = new Scanner(System.in);
		
		int numero1;
		int numero2;
		int soma;
		
		System.out.print("Digite o primeiro n�mero: ");
		numero1 = input.nextInt(); //l� o primeiro n�mero
		
		System.out.print("Digite o segundo n�mero: ");
		numero2 = input.nextInt(); //l� o segundo n�mero		
		
		soma = numero1 + numero2;
		System.out.println("A soma e: " + Integer.toString(soma));
	}
}