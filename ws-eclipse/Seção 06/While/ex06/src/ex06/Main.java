package ex06;

public class Main {

	public static void main(String[] args) {
		int i, x, y;
		
		x = 4;
		y = 0;
		i = 0;
		
		while (i < x) {
			i = i +1;
			y = y +i;
			
			System.out.println("I: " + i);
			System.out.println("Y: " + y);
		}

	}

}
