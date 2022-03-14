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
		
		System.out.printf("�rea do Tri�ngulo = %.3f %n", Triangulo);
		System.out.printf("�rea do C�rculo = %.3f %n", Circulo);
		System.out.printf("�rea do Trap�zio = %.3f %n", Trapezio);
		System.out.printf("�rea do Quadrado %.3f %n", Quadrado);
		System.out.printf("�rea do Ret�ngulo = %.3f", Retangulo);
	
		sc.close();
	}
}
