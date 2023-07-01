import java.awt.event.*;
import javax.swing.*;

public class jbutton_use extends JFrame{
    JFrame f;
    jbutton_use(){
        f = new JFrame();
        // GUI
        JButton b = new JButton("Submit");
        b.setBounds(100,100,100,50);
        f.add(b);
        JTextField t = new JTextField();
        t.setBounds(100, 200,100,100);
        f.add(t);

        b.addActionListener(new ActionListener() {
            public void actionPerformed(ActionEvent e){
                t.setText("Naman Anand");
            }
        });
        
        // CONTROL FRAME
        f.setSize(600,600);
        f.setTitle("Use of Button");
        f.setLayout(null);
        f.setVisible(true);
    }
    public static void main(String[] args) {
        new jbutton_use();
    }
}
