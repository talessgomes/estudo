import java.util.Locale;
import java.util.Scanner;
public class Main {

	public static void main(String[] args) {

		Locale.setDefault(Locale.US);
		Scanner sc = new Scanner(System.in);

		int idade, soma, cont;
		
		idade = sc.nextInt();
		soma = 0;
		cont = 0;
		
		while (idade >= 0) {
			soma += idade;
			 cont = cont + 1;
			idade = sc.nextInt();
		}
		if (cont > 0) {
			double media = (double) soma / cont;
			System.out.printf("%.2f%n", media);
		} else {
			System.out.println("Impossível calcular");
		}
		sc.close();
	}

}
