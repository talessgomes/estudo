import java.util.Scanner;

public class Main {

	public static void main(String[] args) {

		Scanner sc = new Scanner(System.in);

		int choice, alcool, gasolina, diesel;
		
		System.out.println("Escolha de 1 a 3 para fazer a sua compra.");
		alcool = 0;
		gasolina = 0;
		diesel = 0;

		choice = sc.nextInt();

		while (choice != 4) {
			if (choice == 1) {
				System.out.println("Você escolheu Alcool.");
				System.out.println();
				alcool += 1;
			} 
			else if (choice == 2) {
				System.out.println("Você escolheu Gasolina.");
				System.out.println();
				gasolina += 1;
			} 
			else if (choice == 3) {
				System.out.println("Você escolheu Diesel.");
				System.out.println();
				diesel += 1;
			}
			
			System.out.println("Por enquanto o total é de:");
			System.out.println("Alcool: " + alcool);
			System.out.println("Gasolina: " + gasolina);
			System.out.println("Diesel: " + diesel);
			System.out.println();
			System.out.println("Gostaria de mais alguma coisa?");
			choice = sc.nextInt();
		}

		System.out.println("MUITO OBRIGADO");
		System.out.println("Alcool: " + alcool);
		System.out.println("Gasolina: " + gasolina);
		System.out.println("Diesel: " + diesel);
		
		sc.close();
	}
}
