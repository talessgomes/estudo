package exercicio_while;
import java.util.Scanner;

public class exercicio_03 {

	public static void main(String[] args) {
		
		Scanner sc = new Scanner(System.in);
		
		int alcool = 0;
		int gasolina = 0;
		int diesel = 0;
		
		int tipo = sc.nextInt();
		
		while (tipo != 4) {
			if (tipo == 1) {
				alcool = alcool + 1;
				System.out.println("Você escolheu alcool, quantidade " + alcool);
			}
			else if (tipo == 2) {
				gasolina = gasolina + 1;
				System.out.println("Você escolheu gasolina, quantidade " + gasolina);
			}
			else if (tipo == 3) {
				diesel = diesel + 1;
				System.out.println("Você escolheu diesel, quantidade " + diesel);
			}
			
			tipo = sc.nextInt();
		}
		
		System.out.println("Muito Obrigado");
		System.out.println("Alcool:" + alcool);
		System.out.println("Gasolina:" + gasolina);
		System.out.println("Diesel: " + diesel);
		
		sc.close();
		
	}

}
