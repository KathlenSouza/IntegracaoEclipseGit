package estudos;

import static org.junit.jupiter.api.Assertions.*;

import org.junit.jupiter.api.Test;

class ListaArrayTest {

	@Test
	void testInverter() {
		ListaArray inv = new ListaArray();
		int []numeros= {1,2,3,4,5};
		int []alterado= {5,4,3,2,1};
		assertArrayEquals(alterado,inv.inverter(numeros));
	}

}
