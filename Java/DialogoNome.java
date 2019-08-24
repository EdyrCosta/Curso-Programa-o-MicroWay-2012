import javax.swing.JOptionPane;

public class DialogoNome
{
	public static void main(String[] args)
	{
		//pede para o usuário inserir seu nome
		String nome = JOptionPane.showInputDialog("Qual seu nome?");
		
		//cria a mensagem
		String message = String.format("Bem Vindo, %s a Programação Java!", nome);
		
		//exibe a mensagem
		JOptionPane.showMessageDialog(null, message);
	}
}