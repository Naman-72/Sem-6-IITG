package Assignment6;

import javax.swing.*;
import javax.swing.border.EmptyBorder;

import java.awt.*;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.text.NumberFormat;

public class Assgn extends JFrame implements ActionListener{

    public JButton registerButton,percentageButton;
    public JComboBox<String> comboBox;
    public String gender = "Not provided";
    public String branch = "CSE";
    public String percentValue = "0.0";

    public JTextField nameTextField = new JTextField();
    public JTextField dOBTextField = new JTextField();
    public JTextField emailTextField = new JTextField();
    public JTextField passwordTextField = new JTextField();
    public JTextField mobileTextField = new JTextField();
    public JTextField mathTextField = new JTextField();
    public JTextField physicsTextField = new JTextField();
    public JTextField chemistryTextField = new JTextField();
    public JTextField percentageTextField = new JTextField();

    public JRadioButton male,female;
    //ColorStripesExample colorStripesExample = new ColorStripesExample();
    public void createTopPanels(JPanel mainPanel,GridBagConstraints c)
    {
        c.gridx = 0;c.gridy = 0;
        for(int i = 0;i<9;i++)
        {
            JPanel panel = new JPanel();
            panel.setOpaque(false);
            c.weightx = 0.5;
            mainPanel.add(panel,c);
            c.fill = GridBagConstraints.HORIZONTAL;
            c.gridx++;
        }
    }

    public void createCombo(JPanel mainPanel,int row,GridBagConstraints c,
                    String text,JComboBox<String> comboBox)
    {
        c.gridx = 0;
        c.gridy = row;
        c.weightx = 0.5;
        c.gridwidth = 1;
        c.ipady = 0;
        c.fill = GridBagConstraints.HORIZONTAL;
        JLabel label = new JLabel(text);
        label.setFont(new Font("SansSerif",Font.BOLD,16));
        mainPanel.add(label,c);

        c.gridx = 1;
        c.gridy = row;
        c.fill = GridBagConstraints.HORIZONTAL;
        c.weightx = 0;
        c.gridwidth = 1;
        //c.ipady = 20;
        
        mainPanel.add(comboBox,c);
    }

    public void createRadio(JPanel mainPanel,int row,GridBagConstraints c,
                String text,JRadioButton male,JRadioButton female)
    {
        c.gridx = 0;
        c.gridy = row;
        c.weightx = 0.5;
        c.gridwidth = 1;
        c.ipady = 0;
        c.fill = GridBagConstraints.HORIZONTAL;
        JLabel label = new JLabel(text);
        label.setFont(new Font("SansSerif",Font.BOLD,16));
        mainPanel.add(label,c);

        c.gridx = 1;
        c.gridy = row;
        c.fill = GridBagConstraints.HORIZONTAL;
        c.weightx = 0;
        c.gridwidth = 3;
        c.ipady = 20;
        
        JPanel panel = new JPanel();
        panel.add(male);
        panel.add(female);
        panel.setLayout(new GridLayout(1,2));
        mainPanel.add(panel,c);
    }

    public void createParts(JPanel mainPanel,int row,
            GridBagConstraints c,String text,Boolean isEditable,JTextField textField)
    {
        c.gridx = 0;
        c.gridy = row;
        c.weightx = 0.5;
        c.gridwidth = 1;
        c.ipady = 0;
        c.fill = GridBagConstraints.HORIZONTAL;
        JLabel label = new JLabel(text);
        label.setFont(new Font("SansSerif",Font.BOLD,16));
        mainPanel.add(label,c);

        c.gridx = 1;
        c.gridy = row;
        c.fill = GridBagConstraints.HORIZONTAL;
        c.weightx = 0;
        c.gridwidth = 3;
        c.ipady = 20;
        textField.setFont(new Font("Helvetica",Font.PLAIN,16));
        textField.setEditable(isEditable);
        // textField.setMargin(new Insets(0, 10, 0, 0));
        textField.setHorizontalAlignment(JTextField.CENTER);
        mainPanel.add(textField,c);
    }

    public String calcPercentage()
    {
        double percent = 0,mathMarks = 0,physicsMarks = 0,chemistryMarks = 0;
        if(mathTextField.getText().isEmpty()) 
        {
            JOptionPane.showMessageDialog(this,"Please enter marks obtained in maths");
            return ""; 
        }
        if(physicsTextField.getText().isEmpty()) 
        {
            JOptionPane.showMessageDialog(this,"Please enter marks obtained in physics");  
            return "";
        }
        if(chemistryTextField.getText().isEmpty()) 
        {
            JOptionPane.showMessageDialog(this,"Please enter marks obtained in chemistry"); 
            return "";
        }
        try {
            mathMarks = Double.parseDouble(mathTextField.getText());  
        } catch (Exception e) {
            JOptionPane.showMessageDialog(this,
                    "Please enter integral value for marks obtained in maths");
            return "";
        }

        try {
            physicsMarks = Double.parseDouble(physicsTextField.getText());  
        } catch (Exception e) {
            JOptionPane.showMessageDialog(this,
                    "Please enter integral value marks for obtained in physics");
            return "";
        }
        
        try {
            chemistryMarks = Double.parseDouble(chemistryTextField.getText());
        } catch (Exception e) {
            JOptionPane.showMessageDialog(this,
                    "Please enter integral value for marks obtained in physics");
            return "";
        }

        percent = (mathMarks + physicsMarks + chemistryMarks)/3;
        NumberFormat nf= NumberFormat.getInstance();
        nf.setMaximumFractionDigits(2);
        return nf.format(percent);
    }

    public Assgn(){
        String [] branches = {"CSE","ME","EEE","ET","CE"};
        comboBox = new JComboBox<>(branches);

        male = new JRadioButton("Male");
        female = new JRadioButton("Female");
        ButtonGroup group = new ButtonGroup();
        group.add(male);
        group.add(female);
        Font font = new Font("SansSerif", Font.BOLD, 16);
        male.setFont(font);
        female.setFont(font);

        this.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        this.setTitle("Registration Desk");
        
        JPanel mainPanel = new JPanel();
        mainPanel.setBorder(new EmptyBorder(20,50,20,40));
        mainPanel.setLayout(new GridBagLayout());
        GridBagConstraints c = new GridBagConstraints();
        c.insets = new Insets(5, 5, 5, 5);

        createTopPanels(mainPanel,c);
        createParts(mainPanel,1,c,"Name:",true,nameTextField);
        createParts(mainPanel,2,c,"DOB:",true,dOBTextField);
        createRadio(mainPanel,3,c,"Gender:",male,female);
        createParts(mainPanel,4,c,"Email:",true,emailTextField);
        createParts(mainPanel,5,c,"Create Password:",true,passwordTextField);
        createParts(mainPanel,6,c,"Mobile Number:",true,mobileTextField);
        createCombo(mainPanel,7,c,"Desired Branch:",comboBox);
        createParts(mainPanel,8,c,"Marks in Math:",true,mathTextField);
        createParts(mainPanel,9,c,"Marks in Physics:",true,physicsTextField);
        createParts(mainPanel,10,c,"Marks in Chemistry:",true,chemistryTextField);
        createParts(mainPanel,11,c,"Percentage:",false,percentageTextField);

        c.gridx = 6;
        c.gridy = 10;
        c.fill = GridBagConstraints.HORIZONTAL;
        c.weightx = 0;
        c.gridwidth = 4;
        c.ipady = 12;
        percentageButton = new JButton("Calculate Percentage");
        percentageButton.setFont(new Font("SansSerif",Font.BOLD,16));
        mainPanel.add(percentageButton,c);

        c.gridx = 2;
        c.gridy = 12;
        c.fill = GridBagConstraints.HORIZONTAL;
        c.weightx = 0;
        c.gridwidth = 4;
        c.ipady = 12;
        c.weighty = 1;
        registerButton = new JButton("Register");
        registerButton.setFont(new Font("SansSerif",Font.BOLD,16));
        registerButton.addActionListener(this);
        comboBox.addActionListener(this);
        male.addActionListener(this);
        female.addActionListener(this);
        percentageButton.addActionListener(this);
        mainPanel.add(registerButton,c);

        JScrollPane scrollPane = new JScrollPane( mainPanel );
        this.add(scrollPane);
        this.pack();
        this.setVisible(true);
    }

    @Override
    public void actionPerformed(ActionEvent e) {
        
        if(e.getSource() == male) gender = "Male";
        else if(e.getSource() == female) gender = "Female";
        else if(e.getSource() == comboBox) 
        {
            branch = (String)comboBox.getSelectedItem();
        }
        else if(e.getSource() == registerButton)
        {
            int lines = 0;
            File file = new File("Database.txt");
            if(file.exists())
            {
                try 
                {
                    BufferedReader reader = 
                            new BufferedReader(new FileReader("Database.txt"));
                    lines = (int) reader.lines().count();
                    reader.close();
                } 
                catch (Exception e1) {
                    System.out.println("Some error occred : " + e);
                }
            }

            if(percentageTextField.getText().isEmpty()) 
            {
                percentValue = calcPercentage();
                if(percentValue.isEmpty()) return;
                percentageTextField.setText(percentValue);
            }
            else percentValue = percentageTextField.getText();
            String record = " | " + nameTextField.getText() + " | " + dOBTextField.getText() + 
                            " | " + gender + " | " + emailTextField.getText() + " | " + 
                            passwordTextField.getText() + " | " + mobileTextField.getText() + 
                            " | " + branch + " | " + mathTextField.getText() + " | " +
                            physicsTextField.getText() + " | " + chemistryTextField.getText() + 
                            " | " + percentValue + " |"; 
            record = Integer.toString(lines+1) + record;
            
            try {
                FileWriter Writer  = new FileWriter("Database.txt",true);
                Writer.write(record);
                Writer.write("\n");
                Writer.close();
            } catch (IOException exception) {
                System.out.println("Error in writing to file");
            }
            
            JOptionPane.showMessageDialog(this,"Registration Successful !!");  
            this.dispose();
            new Assgn();
        }
        else if(e.getSource() == percentageButton)
        {
            percentageTextField.setText(calcPercentage());
        }
    }
}
