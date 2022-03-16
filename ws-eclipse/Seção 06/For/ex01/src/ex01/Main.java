package ex01;

public class Main {

	public static void main(String[] args) {

		int x, y;
		
		x = 4;
		y = x + 2;
		for (int i=0; i < x; i++) {
			System.out.print(x + " " + y);
			y = y + i;
		}

	}

}
