public class LivroGrauTeste4
{
	public static void main(String[] args)
	{
		//cria um objeto livrograu da classe livrograu4 e
		//passa o nome do curso para o construtor
		LivroGrau4 meuLivroGrau = new LivroGrau4("01 - Introdu��o a Programa��o Java");
		meuLivroGrau.displayMessage();
		meuLivroGrau.determineClassAverage();
	}
}