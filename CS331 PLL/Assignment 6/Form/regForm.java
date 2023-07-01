import java.awt.*;
import java.awt.event.*;

public class regForm extends Frame {
    regForm()
    {
        setLayout(new FlowLayout());
        // add closing
        addWindowListener(new WindowAdapter() {
            public void windowClosing(WindowEvent e)
            {
                System.exit(0);
            }
        });
        // GUI
        Label l1 = new Label("Registration Form");
        add(l1);
        Label l2 = new Label("Name: ");
        add(l2);
        TextField name1 = new TextField(15);
        add(name1);

        Label DOB = new Label("DOB: ");
        add(DOB);
        TextField DOBField = new TextField(15);
        add(DOBField);

        Label genderlLabel = new Label("Gender");
        add(genderlLabel);
        CheckboxGroup c1 = new CheckboxGroup();
        Checkbox c11 = new Checkbox("Male",c1,false);
        Checkbox c12 = new Checkbox("Female",c1,false);
        add(c11);       
        add(c12);       

        Label emaiLabel =new Label("Email:");
        add(emaiLabel);
        TextField emaTextField = new TextField(15);
        add(emaTextField);

        Label passwordcreateLabel =new Label("Create Password:");
        add(passwordcreateLabel);
        TextField passworField = new TextField(15);
        add(passworField);

        Label mobileLabel =new Label("Mobile Number:");
        add(mobileLabel);
        TextField t = new TextField(15);
        add(t);

        Label branch = new Label("Branch: ");
        add(branch);
        Choice bRANCHList = new Choice();
        bRANCHList.add("CSE");
        bRANCHList.add("ME");
        bRANCHList.add("EEE");
        bRANCHList.add("ET");
        bRANCHList.add("CE");
        add(bRANCHList);

        

        // Control Frame
        setVisible(true);
        setSize(600,600);
        setTitle("Registration Desk");
        
    }
    public static void main(String[] args) {
        new regForm();
    }
}
