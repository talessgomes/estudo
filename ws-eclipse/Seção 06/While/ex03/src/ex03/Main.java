package ex03;

public class Main {

	public static void main(String[] args) {
		
		double x, y;
		
		x = 100;
		y = 100;
		
		while (x != y) { // n�o vai mostrar nada na tela, pois os dois s�o iguais.
			System.out.print("Olha");
			 x = Math.sqrt(y);
		}

	}

}
