import java.util.Scanner;

public class Main {

	public static void main(String[] args) {

		Scanner sc = new Scanner(System.in);

		System.out.println("Quanta vezes voc� gostaria de fazer o procedimento?");

		int n = sc.nextInt();

		System.out.println("Por favor,insira os n�meros para o c�lculo: ");
		for (int i = 0; i < n; i++) {

			int x = sc.nextInt();
			int y = sc.nextInt();

			if (y == 0) {
				System.out.println("Imposs�vel dividir");
			} else {
				double div = (double) x / y;
				System.out.printf("%.1f", div);
			}
		}

		sc.close();
	}

}
