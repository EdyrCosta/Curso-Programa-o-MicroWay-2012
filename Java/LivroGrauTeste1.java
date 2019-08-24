import java.util.Scanner;

public class LivroGrauTeste1
{
	public static void main(String[] args)
	{
		//cria um objeto livrograu e o atribui a meulivrograu
		Scanner input = new Scanner(System.in);
		
		//cria um objeto LivroGrau e o atribui a meuLivroGrau
		LivroGrau1 meuLivroGrau = new LivroGrau1();
		
		//prompt para a entrada do nome do curso
		System.out.println("Por favor digite o nome do Curso: ");
		String nameOfcourse = input.nextLine(); //lê a linha de texto
		System.out.println();
		
		//Chama o método displayMessage de meuLivroGrau
		//e passa nameOfcourse como um argumento
		meuLivroGrau.displayMessage(nameOfcourse);
	}
}