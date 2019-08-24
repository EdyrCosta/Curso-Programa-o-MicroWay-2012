import javax.swing.JOptionPane;

public class ExecDialogo
{
	public static void main(String[] args)
	{
		//Pergunta o nome do usuário
		String nome = JOptionPane.showInputDialog("Qual o seu nome?");
		
		//Pergunta a idade do usuário
		String idade = JOptionPane.showInputDialog("Qual a sua idade?");
		
		//prepara a mensagem
		String message = String.format("Olá " + nome + ", Sua idade é de " + idade);
		
		
		JOptionPane.showMessageDialog(null, message);
	}
}