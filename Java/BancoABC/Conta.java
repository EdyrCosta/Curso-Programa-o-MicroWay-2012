public class Conta
{
	//Variáveis
	private double Saldo;
	
	//Construtor
	public Conta()
	{
		Saldo = 0.0;
	}
	
	public double ConsultaSaldo()
	{
		return Saldo;
	}
	
	public void Depositar(double quantia)
	{
		Saldo += quantia;
		//exibe uma mensagem de obrigado
		System.out.println("Obrigado por confiar no BancoABC. Volte Sempre!");
	}
}