package application;

import java.util.InputMismatchException;
import java.util.Scanner;

public class Program {

	public static void main(String[] args) {

		Scanner sc = new Scanner(System.in);
		
		try {
			String[] vect = sc.nextLine().split(" ");
			int positicion = sc.nextInt();
			System.out.println(vect[positicion]);
		}
		catch(ArrayIndexOutOfBoundsException e) {
			System.out.println("Invalid position!");
		}
		catch(InputMismatchException i) {
			System.out.println("Input error!");
		}
		
		System.out.println("End of program");
		
		sc.close();
	}

}
