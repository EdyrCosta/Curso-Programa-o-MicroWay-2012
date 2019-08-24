import java.util.Scanner;

public class BancoABC
{
	//Componentes
	public static Scanner input = new Scanner(System.in);
	//vari�veis
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
			
			//Exibe as op��es que o usu�rio tem Direito
			System.out.print("\nO que voc� deseja fazer?");
			System.out.print("\n1. Consultar o saldo");
			System.out.print("\n2. Fazer um dep�sito");
			System.out.print("\n3. Retirar Dinheiro");
			System.out.print("\n4. Sair");
			
			//obt�m a entrada do usu�rio
			System.out.print("\nSua Op��o: ");
			try
			{
				opcao = input.nextInt();
			}
			catch(Exception ex)
			{
				System.out.println("Op��o errada\n\n");
			}


			switch(opcao)
			{
				case 1:
					//Chama a fun��o consultaSaldo da classe conta
					System.out.println("Seu saldo atual � de: " + conta.ConsultaSaldo());	
					break;
				case 2:
					//Exibe uma mensagem ao usu�rio
					System.out.print("Quanto o sr. deseja depositar?");
					dinheiro = input.nextDouble();
					conta.Depositar(dinheiro);
					System.out.println("Deseja ver seu saldo?");
					System.out.print("Y/N: ");
					String op = BancoABC.input.nextLine();
					if(op == "Y")
					{
						System.out.println("Seu saldo atual � de: " + conta.ConsultaSaldo());	
					}
					break;
				case 3:
					//chama o m�todo sacar
					//Sacar();
					break;
				case 4:
					System.exit(0);
					break;
			}
		}
	}
}