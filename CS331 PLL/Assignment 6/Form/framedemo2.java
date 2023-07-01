import java.awt.*;
import java.awt.event.*;
public class framedemo2 {
    public static void main(String[] args) {

        Frame f1 = new Frame();
        f1.setLayout(new FlowLayout());
        f1.addWindowListener(new WindowAdapter() {
          public void windowClosing(WindowEvent we)
          {
            System.exit(0);
          }  
        });
        // GUI LOGIC
        Button b1 = new Button("Submit");
        Label l1 = new Label("Enter Your Name :");
        TextField t1 = new TextField("Name");
        f1.add(l1);
        f1.add(t1);
        f1.add(b1);
        // CONTROL LOGIC 
        f1.setVisible(true);
        f1.setSize(500,500);
        f1.setName("FRAMEDEMO 2");
    }
}
