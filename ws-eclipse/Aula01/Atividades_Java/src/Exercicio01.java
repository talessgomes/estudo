import java.util.Scanner;
public class Exercicio01 {

	public static void main(String[] args) {
			Scanner sc = new Scanner(System.in);
			
			int A, B, resultado;
			
			A = sc.nextInt();
			B = sc.nextInt();
			
			resultado = A + B;
			
			System.out.printf("A soma ?: " + resultado);
			
			sc.close();
		
	/*		int B = 10;
		int A = 30;
		int soma = A + B;
			
		System.out.println("SOMA = " + soma); */	
	}

}
