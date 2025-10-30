package Conta;

public class ContaEspecial extends Conta {
	private double limite;
	private boolean status;

	public ContaEspecial() {
		super();
		this.limite = 0;
		this.status = true;
	}

	public ContaEspecial(String nome, long num, double saldoInicial, double limite) {
		super(nome, num, saldoInicial);
		this.limite = limite;
		this.status = true;
	}

	@Override
	public void sacar(double valor) {
// permite saque até saldo + limite
		if (valor <= this.saldo + limite) {
			this.saldo -= valor;
			System.out.println("Saque de R$" + valor + " realizado com sucesso.");
		} else {
			System.out.println("Saldo insuficiente para saque (mesmo considerando limite).");
		}
	}

	@Override
	public void consultar() {
		System.out.println("Saldo atual: R$" + saldo + "; Limite: R$" + limite);
	}

	public void cheque() {
		if (saldo < 0) {
			System.out.println("Você está usando o cheque especial.");
		} else {
			System.out.println("Não está usando o cheque especial.");
		}
	}

	public double getLimite() {
		return limite;
	}

	public void setLimite(double limite) {
		this.limite = limite;
	}

	public boolean isStatus() {
		return status;
	}

	public void setStatus(boolean status) {
		this.status = status;
	}
}