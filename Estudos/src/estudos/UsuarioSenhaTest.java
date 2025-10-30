package estudos;

import static org.junit.jupiter.api.Assertions.*;

import org.junit.jupiter.api.Test;

class UsuarioSenhaTest {

	@Test
	void testSenhaValida() {
		UsuarioSenha senha = new UsuarioSenha ();
		equals(senha.equals("Abracadabra1234"));
		equals(senha.equals("adivinhA8"));
		equals(senha.equals("Abcde12345"));
		equals(senha.equals("25Averific"));	
	}
}
