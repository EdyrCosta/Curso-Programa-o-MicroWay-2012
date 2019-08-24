import java.util.Scanner; //importando as bibliotecas necessárias

public class Adicao
{
	public static void main(String[] args)
	{
		//cria um scanner para obter a entrada do usuário
		Scanner input = new Scanner(System.in);
		
		int numero1;
		int numero2;
		int soma;
		
		System.out.print("Digite o primeiro número: ");
		numero1 = input.nextInt(); //lê o primeiro número
		
		System.out.print("Digite o segundo número: ");
		numero2 = input.nextInt(); //lê o segundo número		
		
		soma = numero1 + numero2;
		System.out.println("A soma e: " + Integer.toString(soma));
	}
}