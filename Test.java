import java.awt.Color;
import java.awt.Graphics;
import javax.swing.JFrame;
import javax.swing.JPanel;
 
public class Test extends JFrame {
 
    public class Panneau extends JPanel {
 
        public void paintComponent(Graphics g){
            g.fillOval(20, 20, 75, 75);
        }               
    }
    public Test(){
        
        this.setTitle("Test");
        this.setSize(100, 100);
        this.setLocationRelativeTo(null);               
        this.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        this.setContentPane(new Panneau());
        this.setVisible(true);
        }
    public static void main(String args[])
    {
        Test fenetre = new Test();
    }
    
    
        
}