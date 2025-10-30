package estudos;

import static org.junit.jupiter.api.Assertions.*;

import org.junit.jupiter.api.Test;

class TemperaturaUtilsTest {

	@Test
	void testCelsiusParaFahrenheit() {
		TemperaturaUtils temp = new TemperaturaUtils();
		
		double conversao = temp.celsiusParaFahrenheit(0);
		assertEquals(32.0, conversao, 0.0001);
		
        conversao = temp.celsiusParaFahrenheit(100);
        assertEquals(212.0, conversao, 0.0001);

        conversao = temp.celsiusParaFahrenheit(-40);
        assertEquals(-40.0, conversao, 0.0001);
		
		
		//0.0001 margem de erro 
        //assertEquals(valorEsperado, valorObtido, margemDeErro);
	}

}
