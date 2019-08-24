public class LivroGrau3Teste
{
	public static void main(String[] args)
	{
		//cria um objeto livrograu3
		LivroGrau3 livroGrau1 = new LivroGrau3("01 Introducao de Programacao em Java");
		LivroGrau3 livroGrau2 = new LivroGrau3("02 Dados e Estruturas em Java");
		
		//exibe o valor inicial de nomeCurso para cada LivroGrau3
		System.out.printf("livroGrau1 Nome do curso e: %s\n", livroGrau1.getNomeCurso());
		System.out.printf("livroGrau2 Nome do curso e: %s\n", livroGrau2.getNomeCurso());
	}
}