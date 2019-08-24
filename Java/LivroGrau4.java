import java.util.Scanner;

public class LivroGrau4
{
	private String nomeCurso;
	
	//construtor
	public LivroGrau4(String nome)
	{
		nomeCurso = nome;
	}
	
	//metodo para configurar o nome do curso
	public void setNomeCurso(String nome)
	{
		nomeCurso = nome;
	}
	
	public String getNomeCurso()
	{
		return nomeCurso;
	}
	
	public void displayMessage()
	{
		System.out.printf("Bem Vindo ao Livro de Grau\n%s!\n\n", getNomeCurso());
	}
	
	//Determina a média da classe com base em 10 notas inseridas
	public void determineClassAverage()
	{
		Scanner input = new Scanner(System.in);
		
		int total;
		int contadorNota;
		int nota;
		int media;
		
		total = 0;
		contadorNota = 1;
		
		//loop
		while(contadorNota <=10)
		{
			System.out.printf("Entre com a nota: ");
			nota = input.nextInt();
			total = total + nota;
			contadorNota = contadorNota + 1;
		}
		
		media = total / 10;
		
		System.out.printf("\nTotal de todas as 10 notas e %d\n", total);
		System.out.printf("A media da classe e %d\n", media);
	}
}