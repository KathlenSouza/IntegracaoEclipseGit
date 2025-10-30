package estudos;

public class TextoUtils {
	public static int contarVogais(String texto) {
		 int count = 0;
		 for (char c : texto.toLowerCase().toCharArray()) {
		 if ("aeiou".indexOf(c) != -1) {
		 count++;
		 }
		 }
		 return count;
		 }
	
}
