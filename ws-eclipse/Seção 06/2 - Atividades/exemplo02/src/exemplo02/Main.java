package exemplo02;

import java.util.Scanner;

public class Main {

	public static void main(String[] args) {
		
		Scanner sc = new Scanner(System.in);
		int x, y, min, max;
		
		x = sc.nextInt();
		y = sc.nextInt();
		
		if (x < y) {
			min = x;
			max = y;
		} else {
			min = y;
			max = x;
		}

		int soma  = 0;
		for (int i=min+1; i<max; i++) {
			if (i % 2 != 0) {
				soma = soma + i;
			}
		}
		System.out.println(soma);
		
		sc.close();
	}

}
