import javax.swing.*;
public class tryagain {
JFrame f;
tryagain(){
        f = new JFrame();
        JButton b = new JButton("CLICK");
        b.setBounds(100,100,100,100);
        f.add(b);

        f.setSize(600,600);
        f.setLayout(null);
        f.setVisible(true);
    }
    public static void main(String[] args) {
        new tryagain();
    }
}
