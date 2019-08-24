import javax.swing.JFrame;

public class LinhasTeste
{
	public static void main(String[] args)
	{
		//cria um painel que contém nosso desenho
		Linhas panel = new Linhas();
		
		//cria um novo frame para armazenar o painel
		JFrame application = new JFrame();
		
		//configura o frame para ser encerrado quando ele é fechado
		application.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		
		
		application.add(panel);
		application.setSize(250,250);
		application.setVisible(true);
	}
}