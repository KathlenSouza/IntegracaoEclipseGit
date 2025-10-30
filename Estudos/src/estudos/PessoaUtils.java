package estudos;
import java.time.LocalDate;
import java.time.Period;
public class PessoaUtils {
	public int calcularIdade(LocalDate i) {
		 return Period.between(i, LocalDate.now()).getYears();
		 }

}
