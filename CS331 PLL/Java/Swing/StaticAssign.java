import javax.swing.*;
import javax.swing.border.EmptyBorder;

import java.awt.*;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;

public class StaticAssign implements ActionListener{

    public static JButton registerButton,percentageButton;
    //ColorStripesExample colorStripesExample = new ColorStripesExample();
    public static void createTopPanels(JPanel mainPanel,GridBagConstraints c)
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

    public static void createCombo(JPanel mainPanel,int row,GridBagConstraints c,
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

    public static void createRadio(JPanel mainPanel,int row,GridBagConstraints c,
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

    public static void createParts(JPanel mainPanel,int row,
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
    public static void main(String[] args){
        JTextField nameTextField = new JTextField();
        JTextField dOBTextField = new JTextField();
        JTextField emailTextField = new JTextField();
        JTextField passwordTextField = new JTextField();
        JTextField mobileTextField = new JTextField();
        JTextField mathTextField = new JTextField();
        JTextField physicsTextField = new JTextField();
        JTextField chemistryTextField = new JTextField();
        JTextField percentageTextField = new JTextField();

        String [] branch = {"CSE","ME","EEE","ET","CE"};
        JComboBox<String> comboBox = new JComboBox<>(branch);

        JRadioButton male = new JRadioButton("Male");
        JRadioButton female = new JRadioButton("Female");
        ButtonGroup group = new ButtonGroup();
        group.add(male);
        group.add(female);
        Font font = new Font("SansSerif", Font.BOLD, 16);
        male.setFont(font);
        female.setFont(font);

        JFrame frame = new JFrame();
        frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        frame.setTitle("Registration Desk");
        
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
        mainPanel.add(registerButton,c);

        JScrollPane scrollPane = new JScrollPane( mainPanel );
        frame.add(scrollPane);
        frame.pack();
        frame.setVisible(true);

    }

    @Override
    public void actionPerformed(ActionEvent e) {
        if(e.getSource() == registerButton)
        {
            System.out.println("registerButton clicked!!");
        }
    }
}
