import java.util.Scanner;

public class numeros_multiplos {

	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		
		int A = sc.nextInt();
		int B = sc.nextInt();
		
		if (A % B == 0 || B % A == 0) {
			System.out.println("S�o multiplos");
		} else {
			System.out.println("N�o S�o multiplos");
		}
		
		sc.close();
	}

}
