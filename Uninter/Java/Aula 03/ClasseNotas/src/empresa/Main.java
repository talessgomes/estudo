package empresa;

public class Main {

	public static void main(String[] args) {

		Nota mario = new Nota();
		
		Nota luigi = new Nota(9,10 ,5);
		
		System.out.println("Media Luigi");
		luigi.resultado();
		System.out.println();
		
		mario.setNota1(9);
		mario.setNota2(10);
		mario.setFaltas(5);
		
		mario.resultado();
		
		mario.setNota1(2);
		mario.setFaltas(10);
		
		mario.resultado();

	}

}
