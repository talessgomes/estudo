package application;

import java.util.ArrayList;
import java.util.List;
import java.util.stream.Collectors;

public class Program {

	public static void main(String[] args) {

		List<String> list = new ArrayList<>();
		
		list.add("Maria");
		list.add("jose");
		list.add("Anna");
		list.add("Bob");
		list.add(2, "Marco"); /*Na posição 2(3), estou adicionando o Marco*/
		
		System.out.println(list.size()); /*Vendo o tamanho da lista*/
		
		/*
		list.remove("Anna"); // Removendo Anna
		list.remove(1); // Removendo Jose
		*/
		
		for(String x : list) {
			System.out.println(x);
		}
		
		System.out.println("------------------------------");
		/* list.removeIf(x -> x.charAt(0) == 'M');  Removendo todo mundo que comece com m*/

		System.out.println("Nova lista");
		for(String x : list) {
			System.out.println(x);
		}
		
		System.out.println("------------------------------");
		System.out.println("Index of Bob: " + list.indexOf("Bob"));
		System.out.println("Index of Marco: " + list.indexOf("Marco"));
		
		System.out.println("------------------------------"); 
		List<String> result =  list.stream().filter(x -> x.charAt(0) == 'A').collect(Collectors.toList());
		
		for(String x : result) {
			System.out.println(x);
		}
		
		System.out.println("------------------------------"); 
		String name = list.stream().filter(x -> x.charAt(0) == 'M').findFirst().orElse(null);
				
		System.out.println(name);

	}

}
