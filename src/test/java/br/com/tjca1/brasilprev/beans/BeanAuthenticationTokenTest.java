package br.com.tjca1.brasilprev.beans;

import org.junit.Test;

import com.flextrade.jfixture.JFixture;

public class BeanAuthenticationTokenTest extends AbstractBeansTest {

	private JFixture fixture = new JFixture();

	@Test
	public void testObjeto() throws Exception {
		BeanAuthenticationToken obj = new BeanAuthenticationToken(fixture.create(String.class));
		testarValores(obj, "token", fixture.create(String.class));
	}
}