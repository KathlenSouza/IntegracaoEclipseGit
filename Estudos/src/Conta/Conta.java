package Conta;

public class Conta {
	private String nome;
	private long num; //
	protected double saldo; // protegido para uso em subclasses

	public Conta() {
	}

	public Conta(String nome, long num, double saldo) {
		this.nome = nome;
		this.num = num;
		this.saldo = saldo;
	}

	public void sacar(double valor) {
		if (valor <= saldo) {
			saldo -= valor;
			System.out.println("Saque de R$" + valor + " realizado com sucesso.");
		} else {
			System.out.println("Saldo insuficiente para saque.");
		}
	}

	public void depositar(double valor) {
		saldo += valor;
		System.out.println("Depósito de R$" + valor + " realizado com sucesso.");
	}

	public void consultar() {
		System.out.println("Saldo atual: R$" + saldo);
	}

	public String getNome() {
		return nome;
	}

	public void setNome(String nome) {
		this.nome = nome;
	}

	public long getNum() {
		return num;
	}

	public void setNum(long num) {
		this.num = num;
	}

	public double getSaldo() {
		return saldo;
	}

	public void setSaldo(double saldo) {
		this.saldo = saldo;
	}

	@Override
	public String toString() {
		return "Conta [nome=" + nome + ", num=" + num + ", saldo=" + saldo + "]";
	}
}