import javax.swing.JOptionPane;

public class Subtracao
{
	public static void main(String[] args)
	{
		//obt�m a entrada do usu�rio a partir dos di�logos de entrada JOptionPane
		String primeiroNumero = JOptionPane.showInputDialog("Digite o primero n�mero: ");
		String segundoNumero = JOptionPane.showInputDialog("Digite o segundo n�mero: ");
		
		//converte String em valores int para utliza��o em um c�lculo
		int numero1 = Integer.parseInt(primeiroNumero);
		int numero2 = Integer.parseInt(segundoNumero);
		
		int sub = numero1 - numero2; //faz a subtra��o
		
		//exibe o resultado em um di�logo de mensagem JOptionPane
		JOptionPane.showMessageDialog(null, "O Valor da subtra��o �: " + sub,
									 "Subtra��o de dois inteiros", JOptionPane.WARNING_MESSAGE);
	}
}