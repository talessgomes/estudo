import java.util.Scanner;

public class positivo_negativo {

	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);

		int a;
		
		a = sc.nextInt();
		
		if(a < 0) {
			System.out.printf("N�mero %d Negativo. %n", a);
		} else {
			System.out.printf("N�mero %d Positivo. %n", a);
		}
		
		sc.close();
	}

}
