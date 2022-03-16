import java.util.Scanner;
public class Main {

	public static void main(String[] args) {
		// Tabuada.
		Scanner sc = new Scanner(System.in);
		
		int n = sc.nextInt();
		
		for (int i = 1; i <= 10; i++) {
			int result = i * n;
			System.out.println(i + " X " + n + " = " + result);
			
		}

		sc.close();
	}

}
