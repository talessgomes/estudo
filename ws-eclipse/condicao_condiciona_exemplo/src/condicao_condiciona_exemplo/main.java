package condicao_condiciona_exemplo;

import java.util.Scanner;
import java.util.Locale;
public class main {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
	Locale.setDefault(Locale.US);
		Scanner sc= new Scanner(System.in);
		int hora;
		
		System.out.println("Quantas horas?");
		hora = sc.nextInt();
		
		if(hora < 12) {
			System.out.println("Bom dia");
		}
		else if (hora < 18) {
			System.out.println("Boa tarde");
		}
		else {
			System.out.println("Boa noite");
		}
	
		sc.close();
	}

}
