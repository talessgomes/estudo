import java.util.Locale;
import java.util.Scanner;

public class cordenada_eixoCartesiano {

	public static void main(String[] args) {
		
		Locale.setDefault(Locale.US);
		Scanner sc = new Scanner(System.in);
		
		double x = sc.nextDouble();
		double y = sc.nextDouble();
		
		if(x == 0.0 || y == 0.0) {
			System.out.println("Origem");
		}
		else if (x == 0.0) {
			System.out.println("Eixo Y");
		}
		else if (y == 0.0) {
			System.out.println("Eixo X");
		}
		else if (x > 0 && y > 0) {
			System.out.println("Sa�da Q1");
		}
		else if (x < 0 && y > 0) {
			System.out.println("Sa�da Q2");
		}
		else if (x < 0 && y < 0) {
			System.out.println("Sa�da Q3");
		}
		else {
			System.out.println("Sa�da Q4");
		}
		
		sc.close();
	}

}
