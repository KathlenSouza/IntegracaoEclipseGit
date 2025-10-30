package estudos;

import static org.junit.jupiter.api.Assertions.*;

import org.junit.jupiter.api.Test;

class TesteTextoUtilsTest {

	@Test
	void testContarVogais() {
		assertEquals(5, TextoUtils.contarVogais("aeiou"));
	}
	@Test
	void testContarVogaisquetemconsoante() {
		assertEquals(3, TextoUtils.contarVogais("passaro"));
	}
	void testContarVogaiscomnew() {
		TextoUtils  utils = new TextoUtils();
		assertEquals(0,utils.contarVogais("xyz"));
		assertEquals(2,utils.contarVogais("VOAR"));
	}
}
