package estrutura_condicional;
import java.util.Scanner;

public class Main {

	public static void main(String[] args) {
	/*	Scanner sc= new Scanner(System.in);
		
		System.out.println("Quantas horas?");
		int horas;
		horas = sc.nextInt();
		
		if (horas < 12) {
			System.out.println("Bom dia!");
		} else {
			System.out.println("Boa tarde!");
		}
		
		sc.close(); */
		
		Scanner sc = new Scanner(System.in);
		
		System.out.println("Que horas � agora?");
		int hora;
		
		hora = sc.nextInt();
		
		if(hora < 12) {
			System.out.println("Bom dia!");
			
		} else {
			if (hora <= 18){
				System.out.println("Boa tarde!");
			} else {
				System.out.println("Boa noite!");
			}
		}
		
		sc.close();
	}
}
