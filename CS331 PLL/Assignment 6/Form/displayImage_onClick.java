import java.awt.event.*;
import javax.swing.*;

public class displayImage_onClick extends JFrame {
    JFrame A;
    displayImage_onClick()
    {
        A = new JFrame();
        // GUI
        JButton b = new JButton(new ImageIcon("C:\\Users\\Dell\\Desktop\\CS331 PLL\\Assignment 6\\Form\\NAMAN.png"));
        b.setBounds(100,100,100,100);
        JTextField t = new JTextField();
        t.setBounds(100,400,100,100);

        b.addActionListener(new ActionListener() {
            public void actionPerformed(ActionEvent e){
                t.setText("Hello World");
            }
        });

        A.add(b);
        A.add(t);
        
        // Control Frame
        A.setTitle("Displaying Image On Click");
        A.setSize(600,600);
        A.setLayout(null);
        A.setVisible(true);
        A.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
    }
    public static void main(String[] args) {
        new displayImage_onClick();
    }
}
