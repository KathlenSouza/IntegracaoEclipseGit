package Conta;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Random;

public class TestarOrdenacao {

	 public static void main(String[] args) {
	        Random r = new Random();

	        // Criação das contas
	        ContaPoupanca a = new ContaPoupanca("Luiz", 12345, 50);
	        ContaPoupanca b = new ContaPoupanca("Laura", 1234, 0);
	        ContaPoupanca c = new ContaPoupanca("Ana", 5678, 1);
	        ContaPoupanca d = new ContaPoupanca("Marcela", 2345, 10);
	        ContaPoupanca e = new ContaPoupanca("Beatriz", 6785, 0);
	        ContaPoupanca f = new ContaPoupanca("Casiana", 44456, 9);

	        // Usa ArrayList 
	        List<ContaPoupanca> contas = new ArrayList<>();
	        contas.add(a);
	        contas.add(b);
	        contas.add(c);
	        contas.add(d);
	        contas.add(e);
	        contas.add(f);

	        // Ordena usando compareTo (critério definido em ContaPoupanca)
	        Collections.sort(contas);

	        System.out.println();
	        System.out.println("Depois da ordenação por número da conta:");
	        for (ContaPoupanca cp : contas) {
	            System.out.println(cp.getNum() + " - " + cp.getNome());
	        }
			System.out.println();
	        // Inverte a lista
	        Collections.reverse(contas);
	        System.out.println("\nApós inverter a ordem:");
	        for (ContaPoupanca cp : contas) {
	            System.out.println(cp.getNum() + " - " + cp.getNome());
	        }
	        
			System.out.println();
	        // Cria novas contas com saldos aleatórios
	        ContaPoupanca[] co = new ContaPoupanca[4];
	        for (int i = 0; i < co.length; i++) {
	            co[i] = new ContaPoupanca("Cliente" + (i + 1), 8000 + i, r.nextDouble() * 2000);
	            contas.add(co[i]);
	        }

	        System.out.println("\nContas com saldos aleatórios:");
	        for (ContaPoupanca cp : co) {
	            System.out.printf("Cliente: %s | Saldo: R$ %.2f%n", cp.getNome(), cp.getSaldo());
	        }
	    	System.out.println();
	        // Ordenação por saldo (usando Comparator)
	        contas.sort((c1, c2) -> Double.compare(c1.getSaldo(), c2.getSaldo()));
	    	
	        System.out.println("\nContas ordenadas por saldo:");
	        for (ContaPoupanca cp : contas) {
	            System.out.printf("%s - Saldo: R$ %.2f%n", cp.getNome(), cp.getSaldo());
	        	        }
	        System.out.println();
	    }
	}