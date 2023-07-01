import java.awt.*;
import java.awt.event.*;

class framedemo extends Frame{
    framedemo()
    {
        setLayout(null);
        // GUI LOGIC

        //closeWindow 
        addWindowListener(new WindowAdapter() {
            public void windowClosing(WindowEvent we)
            {
                System.exit(0);
            }
        });
        // DISPLAY BUTTONS
        Button b1 = new Button("Submit");
        b1.setBounds(225,225,50,50);
        add(b1);
        // CONTROL FRAMES
        setVisible(true);
        setSize(500,500);
        setTitle("Registration Form");

    }
    public static void main(String[] args)
    {
        framedemo D = new framedemo();  
        D.addNotify(); 
    }
}