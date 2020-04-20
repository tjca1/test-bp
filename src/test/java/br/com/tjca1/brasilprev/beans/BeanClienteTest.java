package br.com.tjca1.brasilprev.beans;

import java.util.ArrayList;

import org.junit.Test;

import com.flextrade.jfixture.JFixture;

public class BeanClienteTest extends AbstractBeansTest {

	private JFixture fixture = new JFixture();

	@Test
	public void testObjeto() throws Exception {
		
		BeanCliente obj = new BeanCliente();
		testarValores(obj, "clienteId", fixture.create(Long.class));
		testarValores(obj, "itens"  , new ArrayList<BeanItemPedido>());
		
	}

}