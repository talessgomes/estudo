import java.util.Locale;
import java.util.Scanner;

public class Main {

	public static void main(String[] args) {
		/* Este programa calcula as raízes de uma equação do segundo grau
		 os valores dos coeficientes devem ser digitados um por linha
		 */
		
		Locale.setDefault(Locale.US);
		Scanner sc = new Scanner(System.in);
		
		double a,b, c, delta;
		
		System.out.println("Digite oso valores dos coeficientes:");
		a = sc.nextDouble();
		b = sc.nextDouble();
		c = sc.nextDouble();
		
		delta = b * b - 4 * a *c; // cálculo do valor de delta
		System.out.println("Valor de Delta:" + delta);

	}

}
