import java.awt.Graphics;
import javax.swing.JPanel;

public class Linhas extends JPanel
{
	public void paintComponent(Graphics g)
	{
		//cham paintComponent para assegurar que o painel é exibido corretamente
		super.paintComponent(g);
		
		int width = getWidth();
		int height = getHeight();
		
/*		//desenha uma linha a partir do canto superior esquerdo até o inferior direito
		g.drawLine(0, 0, width, height);
		
		//desenha uma linha a partir do canto inferior esquerdo até o superior direito
		g.drawLine(0, height, width, 0);*/
		
		g.drawLine(20, 12, height, width);
		g.drawLine(40, 23, 34, 34);
		g.drawLine(60, 0, height, width);
		g.drawLine(80, 0, height, width);
		g.drawLine(100, 0, height, width);
		g.drawLine(120, 0, height, width);
		g.drawLine(140, 0, height, width);
		g.drawLine(160, 0, height, width);
		g.drawLine(180, 0, height, width);
		g.drawLine(200, 0, height, width);
		g.drawLine(220, 0, height, width);
		g.drawLine(240, 0, height, width);
	}

}