package estudos;

import static org.junit.jupiter.api.Assertions.*;

import org.junit.jupiter.api.Test;

class TesteStringUtils {

	@Test
	void testIsPalindromo() {
		StringUtils  utilsP = new StringUtils();
		equals(utilsP.isPalindromo("Ana"));
		equals(utilsP.isPalindromo("ovo"));
		equals(utilsP.isPalindromo("MIRIM"));
	}

}
