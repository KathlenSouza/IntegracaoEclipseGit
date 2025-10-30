package estudos;
import java.time.LocalDate;
import java.time.Period;

import static org.junit.jupiter.api.Assertions.*;

import org.junit.jupiter.api.Test;

class PessoaUtilsTest {

	@Test
	void testCalcularIdade() {
		PessoaUtils idade = new PessoaUtils();
		LocalDate nascim = LocalDate.of(1998, 8, 1);
		int idadeCalculada =idade.calcularIdade(nascim);		
		assertEquals (26,idadeCalculada);
	}

}
