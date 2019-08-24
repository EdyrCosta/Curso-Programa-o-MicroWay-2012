import javax.swing.JOptionPane;

public class Subtracao
{
	public static void main(String[] args)
	{
		//obtém a entrada do usuário a partir dos diálogos de entrada JOptionPane
		String primeiroNumero = JOptionPane.showInputDialog("Digite o primero número: ");
		String segundoNumero = JOptionPane.showInputDialog("Digite o segundo número: ");
		
		//converte String em valores int para utlização em um cálculo
		int numero1 = Integer.parseInt(primeiroNumero);
		int numero2 = Integer.parseInt(segundoNumero);
		
		int sub = numero1 - numero2; //faz a subtração
		
		//exibe o resultado em um diálogo de mensagem JOptionPane
		JOptionPane.showMessageDialog(null, "O Valor da subtração é: " + sub,
									 "Subtração de dois inteiros", JOptionPane.WARNING_MESSAGE);
	}
}