package application;

import java.util.Locale;
import java.util.Scanner;

import entities.Rectangle;

public class Main {

	public static void main(String[] args) {

		Locale.setDefault(Locale.US);
		Scanner sc = new Scanner(System.in);
		
		Rectangle rect = new Rectangle(); //Pegando a Classe Rectangle
		
		System.out.println("Enter rectangle width: ");
		rect.width = sc.nextDouble(); //Mostrando valor de largura
		System.out.println("Enter rectangle height: ");
		rect.height = sc.nextDouble(); //Mostrando valor de altura
		
		System.out.printf("AREA = %.2f%n", rect.area()); //Imprimindo o resultado de area
		System.out.printf("PERIMETER = %.2f%n", rect.perimeter()); //Imprimindo o resultado do perimetro
		System.out.printf("Diagonal = %.2f%n", rect.diagonal()); //imprimindo o resultado da diagonal
		
		
		
		sc.close();
	}

}
