import javax.swing.JOptionPane;

public class ExecDialogo
{
	public static void main(String[] args)
	{
		//Pergunta o nome do usu�rio
		String nome = JOptionPane.showInputDialog("Qual o seu nome?");
		
		//Pergunta a idade do usu�rio
		String idade = JOptionPane.showInputDialog("Qual a sua idade?");
		
		//prepara a mensagem
		String message = String.format("Ol� " + nome + ", Sua idade � de " + idade);
		
		
		JOptionPane.showMessageDialog(null, message);
	}
}