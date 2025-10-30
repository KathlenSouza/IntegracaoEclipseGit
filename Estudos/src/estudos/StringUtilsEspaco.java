package estudos;

public class StringUtilsEspaco {
	public String removerEspacosExtras(String texto) {
		 return texto.trim().replaceAll("\\s+", " ");
		 }
}
