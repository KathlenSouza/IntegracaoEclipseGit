package Conta;

import java.util.Scanner;

public class TesteConta {
	public static void main(String[] args) {
		Scanner scan = new Scanner(System.in);

		Conta cc = new Conta("Ana Luiza", 1001L, 500.0);
		System.out.println(cc);

		cc.depositar(250.0);
		cc.sacar(100.0);
		cc.consultar();

		System.out.println();
// Teste ContaEspecial
		ContaEspecial ce = new ContaEspecial("Roberto", 2002L, 100.0, 300.0);
		System.out.println(ce);
		ce.sacar(350.0); // usa limite
		ce.consultar();
		ce.cheque();
		System.out.println();

// Teste ContaPoupanca
		ContaPoupanca cp = new ContaPoupanca("Luiza", 3003L, 1000.0);
		System.out.println(cp);
		cp.aplicarRendimentoDiario();
		cp.consultar();

		scan.close();
	}
}