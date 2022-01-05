package estrutura_condicional;
import java.util.Locale;
import java.util.Scanner;
public class exExercicio01 {

	public static void main(String[] args) {
		Locale.setDefault(Locale.US);
		Scanner sc = new Scanner(System.in);
		
		double nota1, nota2, notaFinal;
		
		nota1 = sc.nextDouble();
		nota2 = sc.nextDouble();
		
		notaFinal = nota1 + nota2;
		System.out.printf("Nota final = %.1f%n", notaFinal);
		
		if (notaFinal < 60) {
			System.out.println("Reprovado");
		} else {
			System.out.println("Aprovado");
		}
		
		sc.close();
	}

}
