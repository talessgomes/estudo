package application;

public class Program {

	public static void main(String[] args) {

		int x = 20;
		
		Object obj = x; /*Boxing*/
		
		System.out.println("Variavel x = " + obj);
		
		int y = (int) obj; /*Unboxing*/
		
		System.out.println("Variavel y = " + y);

	}

}
