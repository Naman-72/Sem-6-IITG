import java.awt.Label;

import javax.swing.*;
class add_sub {
    JFrame a;
    add_sub()
    {
        a = new JFrame();
        a.setLayout(null);
        // GUI
        Label L1 = new Label("");
        // CONTROL FRAME
        a.setTitle("Calcy");
        a.setSize(600,600);
        a.setVisible(true);
        a.setDefaultCloseOperation(WindowConstants.EXIT_ON_CLOSE);
    }
    public static void main(String[] args) {
        new add_sub();
    }
}