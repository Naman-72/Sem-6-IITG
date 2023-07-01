package Prelims;
import java.util.*;

public class Mortgage {
    public static void main(String args[]){
        int principle = 0;
        float annualInterestRate = 0.0F,mortgage = 0.0F;
        Scanner scanner = new Scanner(System.in);
        System.out.print("Principle : ");
        principle = scanner.nextInt();
        System.out.print("Annual interest rate : ");
        annualInterestRate = scanner.nextFloat();
        int period = 0;
        System.out.print("Period (Years) : ");
        period = scanner.nextByte();
        System.out.print("Mortgage : ");
        annualInterestRate /= 1200;
        float raised = (float)Math.pow(1 + annualInterestRate, period*12);
        raised /= (raised - 1);
        raised *= annualInterestRate;
        mortgage = raised * principle;
        scanner.close();
        System.out.println(mortgage);
    }
}
