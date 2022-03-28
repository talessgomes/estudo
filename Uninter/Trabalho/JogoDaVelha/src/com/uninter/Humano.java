package com.uninter;

import java.util.Scanner;

public class Humano extends Jogador {
	public Scanner entrada = new Scanner(System.in);

	public Humano(int jogador) { // Caso o jogador humano for escolhido, essa mensagem vai aparecer
		super(jogador);
		this.jogador = jogador;
		System.out.println("Jogador 'Humano' criado!");
	}

	@Override
	public void jogar(Tabuleiro tabuleiro) {
		Tentativa(tabuleiro);
		tabuleiro.setPosicao(tentativa, jogador);
	}

	@Override
	public void Tentativa(Tabuleiro tabuleiro) {
		do {
			do {
				System.out.print("Linha: "); // Vertical são as jogadas na vertical
				tentativa[0] = entrada.nextInt(); // Onde vai ir os números pra jogar

				if (tentativa[0] > 3 || tentativa[0] < 1) // limitando a quantidade de número que podem ser jogados na
															// vertical
					System.out.println("Linha inválida. É 1, 2 ou 3");

			} while (tentativa[0] > 3 || tentativa[0] < 1);

			do {
				System.out.print("Coluna: "); // Colunas são as jogadas na horizontal
				tentativa[1] = entrada.nextInt(); // Onde vai ir os números pra jogar

				if (tentativa[1] > 3 || tentativa[1] < 1)
					System.out.println("Coluna inválida. É 1, 2 ou 3");

			} while (tentativa[1] > 3 || tentativa[1] < 1);

			tentativa[0]--;
			tentativa[1]--;

			if (!checaTentativa(tentativa, tabuleiro)) // Verificando se o local já foi preenchido
				System.out.println("Esse local já foi marcado. Tente outro.");
		} while (!checaTentativa(tentativa, tabuleiro));
	}
}