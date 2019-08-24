import java.util.Scanner;

public class LivroGrau2Teste
{
	public static void main(String[] args)
	{
		//cria um Scanner para obter entrada a partir da janela de comando
		Scanner input = new Scanner(System.in);
		
		//cria um objeto LivroGrau2 e o atribui a meuLivroGrau
		LivroGrau2 meuLivroGrau = new LivroGrau2();
		
		System.out.printf("Nome do Curso inicial é: %s\n\n", meuLivroGrau.getNomeCurso());
		
		//solicita e lê o nome do curso
		System.out.println("Digite o nome do Curso: ");
		String theNome = input.nextLine(); //lê a próxima linha
		meuLivroGrau.setNomeCurso(theNome); //configura o nome do curso
		System.out.println();
		
		meuLivroGrau.displayMessage();
	}
}