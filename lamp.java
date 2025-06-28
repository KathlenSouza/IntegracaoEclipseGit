
public class lamp {
	public String marca;
	public String modelo;
	public String cor;
	int voltagem;
	double preco;
	int garantia;
	
	boolean ligada;
			public void ligar () {
				ligada =true;
					System.out.print(" A lampâmpada está ligada.");
	}
			public void desligar () {
				ligada =false;
					System.out.print(" A lampâmpada está desligada.");
	}
}
