package br.com.tjca1.brasilprev.beans;
import org.junit.Test;
import com.flextrade.jfixture.JFixture;

public class BeanCategoriaTest extends AbstractBeansTest {

	private JFixture fixture = new JFixture();

	@Test
	public void testObjeto() throws Exception {
		BeanCategoria obj = new BeanCategoria();
		testarValores(obj, "nome", fixture.create(String.class));
		testarValores(obj, "id", fixture.create(Integer.class));

	}

}