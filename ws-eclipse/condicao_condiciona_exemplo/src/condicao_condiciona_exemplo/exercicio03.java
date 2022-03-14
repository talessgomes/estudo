package condicao_condiciona_exemplo;
import java.util.Scanner;

public class exercicio03 {

	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		
		int x, y;
		
		x = sc.nextInt();
	    y = sc.nextInt();
	    
		if(x % y == 0 || y % x == 0) {
			System.out.println("São Multiplos");
		} else {
			System.out.println("Não São Multiplos");
		}
		
		sc.close();
		
	}

}
