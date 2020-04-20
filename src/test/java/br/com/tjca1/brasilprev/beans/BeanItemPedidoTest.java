package br.com.tjca1.brasilprev.beans;

import java.math.BigDecimal;
import org.junit.Test;
import com.flextrade.jfixture.JFixture;

public class BeanItemPedidoTest extends AbstractBeansTest {

	private JFixture fixture = new JFixture();

	@Test
	public void testObjeto() throws Exception {
		BeanItemPedido obj = new BeanItemPedido();
		testarValores(obj, "produtoId", fixture.create(Long.class));
		testarValores(obj, "quantidade", fixture.create(Integer.class));
		testarValores(obj, "preco", fixture.create(BigDecimal.class));
	}

}
