import java.util.Locale;
import java.util.Scanner;
public class Ola_mundo {

	public static void main(String[] args) {
		
		Locale.setDefault(Locale.US);
		Scanner sc = new Scanner(System.in);
		
		double A, B, C, Triangulo, Circulo, Trapezio, Quadrado, Retangulo, pi = 3.14159;
		
		A = sc.nextDouble();
		B = sc.nextDouble();
		C = sc.nextDouble();
		
		Triangulo = A * C / 2.0;
		Circulo = C * C * pi;
		Trapezio = (A * B) /2.0 * C;
		Quadrado = B * B;
		Retangulo = A * B;
		
		System.out.printf("Área do Triângulo = %.3f %n", Triangulo);
		System.out.printf("Área do Círculo = %.3f %n", Circulo);
		System.out.printf("Área do Trapézio = %.3f %n", Trapezio);
		System.out.printf("Área do Quadrado %.3f %n", Quadrado);
		System.out.printf("Área do Retângulo = %.3f", Retangulo);
	
		sc.close();
	}
}
