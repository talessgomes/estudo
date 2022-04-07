package application;

import java.util.Locale;
import java.util.Scanner;

import entities.Estudante;

public class Main {

	public static void main(String[] args) {

		Locale.setDefault(Locale.US);
		Scanner sc = new Scanner(System.in);
		
		Estudante student = new Estudante();
		
		System.out.println("Qual � o nome do aluno?");
		student.name = sc.nextLine();
		System.out.println("Quanto ele tirou nessa na mat�ria 1?");
		student.grade1 = sc.nextDouble();
		System.out.println("Quanto ele tirou nessa na mat�ria 2?");
		student.grade2 = sc.nextDouble();
		System.out.println("Quanto ele tirou nessa na mat�ria 3?");
		student.grade3 = sc.nextDouble();
		
		System.out.printf("Final grade: %.2f POINTS%n", student.finalGrade());
		
		if (student.finalGrade() < 60.0) {
			System.out.println("FAILED");
			System.out.printf("Missing %.2f POINT%n", student.missingPoints());
		} else {
			System.out.println("PASS");
		}
		sc.close();
	}

}
