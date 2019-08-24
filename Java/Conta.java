public class Conta
{
	private double balanco; //variável que armazena o saldo
	
	//construtor
	public Conta(double inicialBalanco)
	{
		//valida que inicialBalanco é maior que 0.0
		//se não, o saldo é inicializado como o valor padrão 0.0
		if(inicialBalanco > 0.0)
			balanco = inicialBalanco;
	}
	
	//credita(adiciona) uma quantia a conta
	public void credito(double quantia)
	{
		balanco += quantia; //adiciona quantia ao saldo
	}
	
	public double getBalanco()
	{
		return balanco;
	}
}