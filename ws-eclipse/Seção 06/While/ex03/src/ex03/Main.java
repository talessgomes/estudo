package ex03;

public class Main {

	public static void main(String[] args) {
		
		double x, y;
		
		x = 100;
		y = 100;
		
		while (x != y) { // não vai mostrar nada na tela, pois os dois são iguais.
			System.out.print("Olha");
			 x = Math.sqrt(y);
		}

	}

}
