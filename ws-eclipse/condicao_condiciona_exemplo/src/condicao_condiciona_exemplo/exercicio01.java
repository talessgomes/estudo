package condicao_condiciona_exemplo;
import java.util.Locale;
import java.util.Scanner;

public class exercicio01 {

	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		Locale.setDefault(Locale.US);
		
		int x;
		
		x = sc.nextInt();
		
		if(x < 0) {
			System.out.println("Negativo");
		} else if (x >= 0) {
			System.out.println("Não Negativo");
		}
		else {
			System.out.println("Não negativo");
		}

	}

}
