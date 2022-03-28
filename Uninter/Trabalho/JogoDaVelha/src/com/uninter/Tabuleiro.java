package com.uninter;

public class Tabuleiro { //Classe tabuleiro
	private int[][] tabuleiro = new int[3][3];

	public Tabuleiro() {
		zerarTabuleiro();
	}

	public void zerarTabuleiro() {
		for (int linha = 0; linha < 3; linha++)
			for (int coluna = 0; coluna < 3; coluna++)
				tabuleiro[linha][coluna] = 0;
	}

	public void exibeTabuleiro() {
		System.out.println();
		for (int linha = 0; linha < 3; linha++) {

			for (int coluna = 0; coluna < 3; coluna++) {

				if (tabuleiro[linha][coluna] == -1) {
					System.out.print(" X "); // Mostra o "X" no console
				}
				if (tabuleiro[linha][coluna] == 1) {
					System.out.print(" O "); // Mostra o "O" no console
				}
				if (tabuleiro[linha][coluna] == 0) {
					System.out.print("   ");
				}

				if (coluna == 0 || coluna == 1)
					System.out.print("|"); // mostra no console as linhas |
			}
			System.out.println();
		}

	}

	public int getPosicao(int[] tentativa) {
		return tabuleiro[tentativa[0]][tentativa[1]];
	}

	public void setPosicao(int[] tentativa, int jogador) {
		if (jogador == 1) {
			tabuleiro[tentativa[0]][tentativa[1]] = -1;
		} else if (jogador == 2) {
			tabuleiro[tentativa[0]][tentativa[1]] = 1;
		} else {
			System.out.println();
		}

		exibeTabuleiro();
	}

	public int checaLinhas() { // Verifica no sentido vertical qual seria a opção escolhei entre 1 a 3
		for (int linha = 0; linha < 3; linha++) {

			if ((tabuleiro[linha][0] + tabuleiro[linha][1] + tabuleiro[linha][2]) == -3)
				return -1;
			if ((tabuleiro[linha][0] + tabuleiro[linha][1] + tabuleiro[linha][2]) == 3)
				return 1;
		}

		return 0;

	}

	public int checaColunas() { // Verifica no sentido horizontal qual seria a opção escolhei entre 1 a 3
		for (int coluna = 0; coluna < 3; coluna++) {

			if ((tabuleiro[0][coluna] + tabuleiro[1][coluna] + tabuleiro[2][coluna]) == -3)
				return -1;
			if ((tabuleiro[0][coluna] + tabuleiro[1][coluna] + tabuleiro[2][coluna]) == 3)
				return 1;
		}

		return 0;

	}

	public int checaDiagonais() { //Verifica no sentido diagonal para ser jogado
		if ((tabuleiro[0][0] + tabuleiro[1][1] + tabuleiro[2][2]) == -3)
			return -1;
		if ((tabuleiro[0][0] + tabuleiro[1][1] + tabuleiro[2][2]) == 3)
			return 1;
		if ((tabuleiro[0][2] + tabuleiro[1][1] + tabuleiro[2][0]) == -3)
			return -1;
		if ((tabuleiro[0][2] + tabuleiro[1][1] + tabuleiro[2][0]) == 3)
			return 1;

		return 0;
	}

	public boolean tabuleiroCompleto() {
		for (int linha = 0; linha < 3; linha++)
			for (int coluna = 0; coluna < 3; coluna++)
				if (tabuleiro[linha][coluna] == 0)
					return false;
		return true;
	}
}
