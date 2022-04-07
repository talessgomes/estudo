package entities;

public class Rectangle {
		
		public double  width; //Largura
		public double height; // Altura
		
		public double area() {
			return width * height; //largura vezes altura resulta na área
		}
		
		public double perimeter() { // soma da altura e da largura
			return 2 * (width + height); // multipla duas vezes por causa das duas vezes
	}
		
		public double diagonal() { // multiplica a largura e a altura
			return Math.sqrt(width * width + height * height); // raiz quadrada do resultado
			
		}

}
