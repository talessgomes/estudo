import java.util.Locale;
import java.util.Scanner;

public class exercicio04 {

	public static void main(String[] args) {
		
		Locale.setDefault(Locale.US);
		Scanner sc = new Scanner(System.in);
		
		int numero, hora;
		double salario, horaTrabalhada;
		
		numero = sc.nextInt();
		hora = sc.nextInt();
		horaTrabalhada = sc.nextDouble();
		
		salario = horaTrabalhada * hora;
		
		System.out.println("Number = " + numero);
		System.out.printf("Salário U$ %.2f %n", salario);
		
		sc.close();
	}

}
