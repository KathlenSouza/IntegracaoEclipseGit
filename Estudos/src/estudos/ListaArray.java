package estudos;

public class ListaArray {
	public int[] inverter(int[] numeros) {
		 int[] invertido = new int[numeros.length];
		 for(int i=0; i<numeros.length; i++){
		 invertido[i] = numeros[numeros.length - 1 - i];
		 }
		 return invertido;
		 }

}
