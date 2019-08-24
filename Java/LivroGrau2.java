//Classe LivroGrau2 que contém uma variável de instância nomeCurso
//e métodos para configurar e obter seu valor

public class LivroGrau2
{
	private String nomeCurso; //nome do curso para esse LivroGrau2
	
	//método para configurar o nome do curso
	public void setNomeCurso(String nome)
	{
		nomeCurso = nome; //armazena o nome do curso
	}
	
	//método para recuperar o nome do curso
	public String getNomeCurso()
	{
		return nomeCurso;
	}
	
	public void displayMessage()
	{
		//essa instrução chama getNomeCurso para obter o
		//nome do curso que esse livrograu2 representa
		System.out.printf("Bem Vindo ao Curso \n%s!\n", getNomeCurso());
	}
}