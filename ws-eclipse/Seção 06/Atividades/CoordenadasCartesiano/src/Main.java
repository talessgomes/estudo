import java.util.Scanner;

public class Main {

	public static void main(String[] args) {

		Scanner sc = new Scanner(System.in);

		int x, y;
		
		System.out.println("Informe o valor de X:");
		x = sc.nextInt();
		System.out.println("Informe o valor de Y:");
		y = sc.nextInt();
		
		while(x != 0 && y != 0) {
			if(x > 0 && y > 0) {
				System.out.println("Primeiro!");
			} else if (x < 0 && y > 0) {
				System.out.println("Segundo!");
			} else if (x < 0 && y < 0) {
				System.out.println("Terceiro!");
			} else {
				System.out.println("Quarto!");
			}
			System.out.println();
			System.out.println("Informe o valor de X:");
			x = sc.nextInt();
			System.out.println("Informe o valor de Y:");
			y = sc.nextInt();
		}
		sc.close();
	}

}
