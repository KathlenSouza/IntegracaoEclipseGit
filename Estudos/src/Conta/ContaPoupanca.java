package Conta;

public class ContaPoupanca extends Conta implements Comparable<ContaPoupanca> {
	private double rendimento = 0.25; // taxa

	public ContaPoupanca() {
		super();
	}

	public ContaPoupanca(String nome, long num, double saldo) {
		super(nome, num, saldo);
	}

	public void aplicarRendimentoDiario() {
		double diaRendimento = this.saldo * rendimento;
		this.saldo += diaRendimento; // atualiza o saldo com o rendimento
	}

	@Override
	public int compareTo(ContaPoupanca outra) {
// ordenar por número da conta (num)
		return Long.compare(this.getNum(), outra.getNum());

// também pode ser
// return Double.compare(this.getSaldo(), outra.getSaldo());

//  ou ser (alfabético)
// return this.getNome().compareToIgnoreCase(outra.getNome());
	}

	@Override
	public String toString() {
		return "ContaPoupanca [nome=" + getNome() + ", num=" + getNum() + ", saldo=" + getSaldo() + "]";
	}
}