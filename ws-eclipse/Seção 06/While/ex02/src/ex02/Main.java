package ex02;

public class Main {

	public static void main(String[] args) {
		
		int x, y;
		
		x = 2;
		y = 0;
		
		while ( x < 60) {
			System.out.println("X: " + x + " Y: " + y);
			
			x = x * 2;
			y = y + 10;
		}

	}

}
