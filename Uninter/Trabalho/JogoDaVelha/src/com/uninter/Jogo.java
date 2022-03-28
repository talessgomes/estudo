package com.uninter;

import java.util.Scanner;

public class Jogo { //Classe tabuleiro
	private Tabuleiro tabuleiro;
	private int rodada = 1, vez = 1;
	private Jogador jogador1;
	private Jogador jogador2;
	public Scanner entrada = new Scanner(System.in); // escolher qual vai ser o jogador

	public Jogo() {
		tabuleiro = new Tabuleiro();
		iniciarJogadores();

		while (Jogar())
			;
	}

	public void iniciarJogadores() {
		System.out.println("Quem vai ser o Jogador 1 ?"); // jogador 1
		if (escolherJogador() == 1) {
			this.jogador1 = new Humano(1); // se apertar 1 vai ser o humano o jogador 1
		} else if (escolherJogador() == 1) {
			this.jogador1 = new Computador(1); // se apertar 2 vai ser o computador o jogador 1
		} else if (escolherJogador() == 3) {
			this.jogador2 = new Computador2(1);
		} else if (escolherJogador() == 4) {
			this.jogador2 = new Computador3(1);
		} else {
			System.out.println("jogar não existe");
		}

		System.out.println("----------------------");
		System.out.println("Quem vai ser o Jogador 2 ?"); // jogador 2

		if (escolherJogador() == 1) {
			this.jogador2 = new Humano(2); // se apertar 1 vai ser o humano o jogador 2
		} else if (escolherJogador() == 2) {
			this.jogador2 = new Computador(2); // se apertar 2 vai ser o computador o jogador 2
		} else if (escolherJogador() == 3) {
			this.jogador2 = new Computador2(2);
		} else if (escolherJogador() == 4) {
			this.jogador2 = new Computador3(2);
		} else {
			System.out.println("jogar não existe");
		}

	}

	public int escolherJogador() {
		int opcao = 0;

		do {
			System.out.println("1. Humano");
			System.out.println("2. Computador");
			System.out.println("3. Computador2");
			System.out.println("3. Computador3\n");
			System.out.print("Opção: ");
			opcao = entrada.nextInt(); // Onde a entrada do número vai ser feita

			if (opcao != 1 && opcao != 2 && opcao != 3 && opcao != 4)
				System.out.println("Opção inválida! Tente novamente"); // Caso escolher algo que não existe, vai mostrar
																		// essa mensagem
		} while (opcao != 1 && opcao != 2 && opcao != 3 && opcao != 4);

		return opcao;
	}

	public boolean Jogar() {
		if (ganhou() == 0) {
			System.out.println("----------------------");
			System.out.println("\nRodada " + rodada); // Número de rodadas
			System.out.println("É a vez do jogador " + vez()); //Imprimindo de quem é a vez de jogar

			if (vez() == 1) {
				jogador1.jogar(tabuleiro);
			} else {
				jogador2.jogar(tabuleiro);
			}

			if (tabuleiro.tabuleiroCompleto()) {
				System.out.println("Tabuleiro Completo. Jogo empatado"); // mensagem pro caso de empate
				return false;
			}
			vez++;
			rodada++;

			return true;
		} else {
			if (ganhou() == -1) // Renderizando o vencedor da partida
				System.out.println("Jogador 1 ganhou!");
			else
				System.out.println("Jogador 2 ganhou!");

			return false;
		}

	}

	public int vez() {
		if (vez % 2 == 1)
			return 1; // vez do jogador 1 "X"
		else
			return 2; // vez do jogador 2 "O"
	}

	public int ganhou() { // verificando quem vai ser o ganhador
		if (tabuleiro.checaLinhas() == 1)
			return 1;
		if (tabuleiro.checaColunas() == 1)
			return 1;
		if (tabuleiro.checaDiagonais() == 1)
			return 1;

		if (tabuleiro.checaLinhas() == -1)
			return -1;
		if (tabuleiro.checaColunas() == -1)
			return -1;
		if (tabuleiro.checaDiagonais() == -1)
			return -1;

		return 0;
	}

}
