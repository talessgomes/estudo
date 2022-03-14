
public class Main {

	public static void main(String[] args) {
		
		double discount, price;
		price = 400.00;
		
		if (price < 200.00) {
			discount = price * 0.1;
		}
		else {
			discount = 0;
		}
		System.out.println("O desconto vai ser de: " + discount);
	}

}
