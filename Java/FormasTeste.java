import javax.swing.JFrame;
import javax.swing.JOptionPane;

public class FormasTeste
{
	public static void main(String[] args)
	{
		String input = JOptionPane.showInputDialog("Tecle 1 para exibir retângulos\n" +
												   "Tecle 2 para exibir ovais");
												   

		int  escolha = Integer.parseInt(input);
		
		Formas panel = new Formas(escolha);
		
		JFrame application = new JFrame();
		
		application.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		application.add(panel);
		application.setSize(300, 300);
		application.setVisible(true);
	}
}