package estudos;

import static org.junit.jupiter.api.Assertions.*;

import org.junit.jupiter.api.Test;

class StringUtilsEspacoTest {

	@Test
	void testRemoverEspacosExtras() {
		StringUtilsEspaco espaco= new StringUtilsEspaco();
		equals(espaco.removerEspacosExtras("a  manha"));
		equals(espaco.removerEspacosExtras("amanha  havera  aula"));
		equals(espaco.removerEspacosExtras("A  B  c  D   E f"));
		
		
	}

}
