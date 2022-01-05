import java.util.Scanner;

public class par_impar {

	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);

		int A;
		
		A = sc.nextInt();
		
		if (A % 2 == 0) {
			System.out.printf("O número %d é Par %n", A);
		} else {
			System.out.printf("O número %d é Impar %n",  A);
		}
		sc.close();
	}

}
