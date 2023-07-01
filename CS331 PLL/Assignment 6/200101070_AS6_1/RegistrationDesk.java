import javax.swing.*;
import java.awt.*;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
public class RegistrationDesk {
    Frame f;
    RegistrationDesk()
    {
        f = new JFrame();
        // GUI

        // NAME FIELD
        JLabel nameLabel= new JLabel("Name:");
        JTextField nameText = new JTextField(20);
        f.add(nameLabel);
        f.add(nameText);
        nameLabel.setBounds(20, 20, 200, 15);
        nameText.setBounds(240, 20, 100, 20);
        
        // DOB FIELD
        JLabel DOBLabel= new JLabel("DOB:");
        JTextField DOBText = new JTextField(20);
        f.add(DOBLabel);
        f.add(DOBText);
        DOBLabel.setBounds(20, 50, 200, 15);
        DOBText.setBounds(240, 50, 100, 20);

        // GENDER FIELD
        JLabel GenderLabel= new JLabel("Gender:");
        JRadioButton maleButton = new JRadioButton("Male");
        JRadioButton femaleButton = new JRadioButton("Female");
        ButtonGroup gender = new ButtonGroup();
        gender.add(maleButton);
        gender.add(femaleButton);
        f.add(GenderLabel);
        f.add(maleButton);
        f.add(femaleButton);
        GenderLabel.setBounds(20, 80, 200, 15);
        maleButton.setBounds(240, 80, 60, 20);
        femaleButton.setBounds(330, 80, 100, 20);

        // EMAIL FIELD
        JLabel EmailLabel= new JLabel("Email:");
        JTextField EmailText = new JTextField(20);
        f.add(EmailLabel);
        f.add(EmailText);
        EmailLabel.setBounds(20, 110, 200, 15);
        EmailText.setBounds(240, 110, 100, 20);

        
        // Password FIELD
        JLabel PasswordLabel= new JLabel("Create Password:");
        JTextField PasswordText = new JTextField(20);
        f.add(PasswordLabel);
        f.add(PasswordText);
        PasswordLabel.setBounds(20, 140, 200, 15);
        PasswordText.setBounds(240, 140, 100, 20);


        // Mobile No FIELD
        JLabel MobileLabel= new JLabel("Mobile Number:");
        JTextField MobileText = new JTextField(20);
        f.add(MobileLabel);
        f.add(MobileText);
        MobileLabel.setBounds(20, 170, 200, 15);
        MobileText.setBounds(240, 170, 100, 20);


        // Desired Branch FIELD
        JLabel BranchLabel= new JLabel("Branch:");
        JComboBox<String> branchbox = new JComboBox<>();
        branchbox.addItem("CSE");
        branchbox.addItem("ME");
        branchbox.addItem("EEE");
        branchbox.addItem("ET");
        branchbox.addItem("CE");
        f.add(BranchLabel);
        f.add(branchbox);
        BranchLabel.setBounds(20,200,200,15);
        branchbox.setBounds(240,200,100,20);
        
        
        // Marks in maths
        JLabel MarksinMathsLabel= new JLabel("Marks in Math:");
        JTextField MarksinMathsText = new JTextField(20);
        f.add(MarksinMathsLabel);
        f.add(MarksinMathsText);
        MarksinMathsLabel.setBounds(20, 230, 200, 15);
        MarksinMathsText.setBounds(240, 230, 100, 20);

        
        // Marks in Physics
        JLabel MarksinPhysicsLabel= new JLabel("Marks in Physics:");
        JTextField MarksinPhysicsText = new JTextField(20);
        f.add(MarksinPhysicsLabel);
        f.add(MarksinPhysicsText);
        MarksinPhysicsLabel.setBounds(20, 260, 200, 15);
        MarksinPhysicsText.setBounds(240, 260, 100, 20);
        
        // Marks in Chemistry
        JLabel MarksinChemistryLabel= new JLabel("Marks in Chemistry:");
        JTextField MarksinChemistryText = new JTextField(20);
        f.add(MarksinChemistryLabel);
        f.add(MarksinChemistryText);
        MarksinChemistryLabel.setBounds(20, 290, 200, 15);
        MarksinChemistryText.setBounds(240, 290, 100, 20);

        JButton percentageButton = new JButton("Calculate Percentage");
        percentageButton.setBounds(380, 285, 190, 30);
        f.add(percentageButton);

        // Percentage Display
        JLabel PercentageLabel= new JLabel("Percentage:");
        JTextField PercentageText = new JTextField(20);
        f.add(PercentageLabel);
        f.add(PercentageText);
        PercentageLabel.setBounds(20, 320, 200, 15);
        PercentageText.setBounds(240, 320, 100, 20);

        percentageButton.addActionListener(new ActionListener() {
            public void actionPerformed(ActionEvent e)
            {
                int sum = Integer.parseInt(MarksinChemistryText.getText())+Integer.parseInt(MarksinPhysicsText.getText())+Integer.parseInt(MarksinMathsText.getText());
                float p = 100.0f;
                p = p/300;
                p = p*sum;
                String s = String.valueOf(p);
                PercentageText.setText(s);     
            }
        });

        // Register Button
        JButton RegisterButton = new JButton("Register");
        RegisterButton.setBounds(200, 360, 200, 30);
        f.add(RegisterButton);

        RegisterButton.addActionListener(new ActionListener() {
            @Override
            public void actionPerformed(ActionEvent e) {
                try {
                    File f2 = new File("Database.txt");
                    int lineno = 1;
                    if(f2.exists())
                    {
                        BufferedReader r1 = new BufferedReader(new FileReader("Database.txt"));
                        while(r1.readLine()!=null)
                        {
                            lineno++;
                        }
                        r1.close();
                    }
                    FileWriter writer;
                    writer = new FileWriter("Database.txt", true);
                    String gender_String = "Male";
                    if (femaleButton.isSelected()) {
                        gender_String = "Female";
                    }
                    writer.write(lineno+" | " + nameText.getText() + " | " + DOBText.getText() + " | " + gender_String + " | "+ EmailText.getText() + " | " + PasswordText.getText() + " | " + MobileText.getText() + " | "+ branchbox.getSelectedItem() + " | " + MarksinMathsText.getText() + " | " + MarksinPhysicsText.getText()+ " | " + MarksinChemistryText.getText() + " | " + PercentageText.getText() + " | \n");

                    writer.close();
                    JOptionPane.showMessageDialog(f,"Registration Successful !!");  
                } catch (IOException E) {
                    JOptionPane.showMessageDialog(f, "Error while registering user.");
                    E.printStackTrace();
                }
                nameText.setText("");
                DOBText.setText("");
                maleButton.setSelected(false);
                femaleButton.setSelected(false);
                EmailText.setText("");
                PasswordText.setText("");
                MobileText.setText("");
                branchbox.setSelectedIndex(0);
                MarksinMathsText.setText("");
                MarksinPhysicsText.setText("");
                MarksinChemistryText.setText("");
                PercentageText.setText("");
            } 
        });

        // Control Frame
        f.setLayout(null);
        f.setSize(600,600);
        f.setTitle("Registration Desk");
        f.setVisible(true);   
        
    }
    public static void main(String[] args) {
        new RegistrationDesk();
    }
}
