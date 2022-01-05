import java.util.Scanner;
import java.util.Locale;
public class mensagem_intervalo {

	public static void main(String[] args) {
		Locale.setDefault(Locale.US);
		Scanner sc = new Scanner(System.in);

		double entrada = sc.nextDouble();
		
		 if(entrada  < 0.0 || entrada > 100.0 ) {
			 System.out.println("Número fora do intervalo");
		 }
		 else if (entrada <= 25.0) {
			 System.out.println("Intervalo [0,25]");
		 }
		 else if (entrada <= 50.0) {
			 System.out.println("Intervalo [25,50]");
		 }
		 else if (entrada <= 75.0) {
			 System.out.println("Intervalo [50,75]");
		 }
		 else {
			 System.out.println("Intervalo [75,100]");
		 }
		 
		sc.close();
	}

}
