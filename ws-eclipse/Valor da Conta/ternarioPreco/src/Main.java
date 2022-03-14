import java.util.Locale;
import java.util.Scanner;

public class Main {

	public static void main(String[] args) {
		Locale.setDefault(Locale.US);
		Scanner sc = new Scanner(System.in);
		double preco, desconto;
		
		preco = 34.5;
		desconto = (preco < 20.0) ? preco * 0.01 : preco * 0.05;
		
		System.out.println("O desconto vai ser de: " + desconto);
	}

}

/* Exercíco feito com if else.
 double preco, desconto;
		
		preco = 34.5;
		if (preco <20.0) {
			desconto = preco * 0.1;
		}
		else {
			desconto = preco *0.05;
 */
