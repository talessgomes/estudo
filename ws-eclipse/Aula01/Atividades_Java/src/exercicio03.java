import java.util.Scanner;
public class exercicio03 {

	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		
		int dif;
		
		int A = sc.nextInt();
		int B = sc.nextInt();
		int C = sc.nextInt();
		int D = sc.nextInt();
		
		dif = A * B - C * D;
		
		System.out.println(" Diferenša = " + dif);
		
		sc.close();
	}

}
