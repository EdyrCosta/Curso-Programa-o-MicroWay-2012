import java.util.Scanner;

public class BancoABC
{
	//Componentes
	public static Scanner input = new Scanner(System.in);
	//variáveis
	private static int opcao = 0;
	private static double dinheiro = 0.0;
	//Classes
	private static Conta conta = new Conta();
	
	//Construtor
	public BancoABC()
	{
		//inicializa as classes
		conta = new Conta();
		//inicializa os componentes
	}
	
	public static void main(String[] args)
	{
		while(opcao != 4)
		{
			//Exibe a mensagens de boas vindas
			System.out.println("*********************************");
			System.out.println("***** Bem Vindo ao BancoABC *****");
			System.out.println("*********************************");
			
			//Exibe as opções que o usuário tem Direito
			System.out.print("\nO que você deseja fazer?");
			System.out.print("\n1. Consultar o saldo");
			System.out.print("\n2. Fazer um depósito");
			System.out.print("\n3. Retirar Dinheiro");
			System.out.print("\n4. Sair");
			
			//obtém a entrada do usuário
			System.out.print("\nSua Opção: ");
			try
			{
				opcao = input.nextInt();
			}
			catch(Exception ex)
			{
				System.out.println("Opção errada\n\n");
			}


			switch(opcao)
			{
				case 1:
					//Chama a função consultaSaldo da classe conta
					System.out.println("Seu saldo atual é de: " + conta.ConsultaSaldo());	
					break;
				case 2:
					//Exibe uma mensagem ao usuário
					System.out.print("Quanto o sr. deseja depositar?");
					dinheiro = input.nextDouble();
					conta.Depositar(dinheiro);
					System.out.println("Deseja ver seu saldo?");
					System.out.print("Y/N: ");
					String op = BancoABC.input.nextLine();
					if(op == "Y")
					{
						System.out.println("Seu saldo atual é de: " + conta.ConsultaSaldo());	
					}
					break;
				case 3:
					//chama o método sacar
					//Sacar();
					break;
				case 4:
					System.exit(0);
					break;
			}
		}
	}
}