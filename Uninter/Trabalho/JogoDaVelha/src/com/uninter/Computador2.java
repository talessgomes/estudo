package com.uninter;

import java.util.Scanner;

public class Computador2 extends Jogador { //Classe Computador
	public Scanner entrada = new Scanner(System.in); //Onde vai passar a informação

	public Computador2(int jogador) {// Quando o computador2 for escolhido, essa mensagem vai aparecer
		super(jogador);
		System.out.println("Jogador 'Computador2' criado!");
	}

	@Override
	public void jogar(Tabuleiro tabuleiro) {
		Tentativa(tabuleiro);
		tabuleiro.setPosicao(tentativa, jogador);
	}

	public void Tentativa(Tabuleiro tabuleiro) { //Lógica para que o computador possa jogar
		do {
			do {
				tentativa[0] = (int) (Math.random() * 3); // Número vai ser inserido de 3 a 1
				if (tentativa[0] > 3 || tentativa[0] < 1)
					System.out.print("");
			} while (tentativa[0] > 3 || tentativa[0] < 1);

			do {
				tentativa[1] = (int) (Math.random() * 3);
				if (tentativa[1] > 3 || tentativa[1] < 1)
					System.out.print("");
			} while (tentativa[1] > 3 || tentativa[1] < 1);

			tentativa[0]--;
			tentativa[1]--;

			if (!checaTentativa(tentativa, tabuleiro)) // Se o valor for diferente de vazio
				System.out.print("");
		} while (!checaTentativa(tentativa, tabuleiro));
	}
}
