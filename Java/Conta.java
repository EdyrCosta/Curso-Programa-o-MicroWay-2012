public class Conta
{
	private double balanco; //vari�vel que armazena o saldo
	
	//construtor
	public Conta(double inicialBalanco)
	{
		//valida que inicialBalanco � maior que 0.0
		//se n�o, o saldo � inicializado como o valor padr�o 0.0
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