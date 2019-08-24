import java.util.Scanner;

public class ContaTeste
{
	public static void main(String[] args)
	{
		Conta conta1 = new Conta(50.00);
		Conta conta2 = new Conta(-7.53);
		
		//Exibe o saldo inicial de cada objeto
		System.out.printf("Conta1 balanco: R$%.2f\n", conta1.getBalanco());
		System.out.printf("conta2 balanco: R$%.2f\n\n", conta2.getBalanco());
		
		//cria um Scanner para obter a entrada do usuário
		Scanner input = new Scanner(System.in);
		double depositoQuantia;
		
		System.out.print("Entre com a quantia do deposito para a conta1: ");
		depositoQuantia = input.nextDouble(); //lê a entrada do usuário
		System.out.printf("\nAcrescentando %.2f no saldo da conta1\n\n", depositoQuantia);
		conta1.credito(depositoQuantia);
		
		//exibe os saldos
		System.out.printf("Balanco Conta1: R$%.2f\n", conta1.getBalanco());
		System.out.printf("Balanco Conta2: R$%.2f\n\n", conta2.getBalanco());
		
		System.out.print("Entre com a quantia do deposito para conta2: ");
		depositoQuantia = input.nextDouble(); //obtém a entrada do usuário
		System.out.printf("\nAcrescentando %.2f no saldo da conta2\n\n", depositoQuantia);
		conta2.credito(depositoQuantia); //adiciona o saldo a conta2
		
		//exibe os saldos
		System.out.printf("Balanco conta1: R$%.2f\n", conta1.getBalanco());
		System.out.printf("Balanco conta2: R$%.2f\n", conta2.getBalanco());
	}
}