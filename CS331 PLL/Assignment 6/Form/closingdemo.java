import java.awt.*;
import java.awt.event.*;
public class closingdemo {
    public static void main(String[] args)
    {
        Frame f1 = new Frame();
        f1.setLayout(new FlowLayout());
        // closing button
        f1.addWindowListener(new WindowAdapter() {
            public void windowClosing(WindowEvent w) {
                System.exit(0);
            }
        });
        // GUI
        Button b1 = new Button("Submit");
        Label l1 = new Label("Enter Your Name");
        TextField t1 = new TextField(20);
        f1.add(l1);
        f1.add(t1);
        f1.add(b1);
        // CONTROL FRAME
        f1.setVisible(true);
        f1.setTitle("CLOSING TEST");
        f1.setSize(600,600);
    }
}
