package br.com.tjca1.brasilprev.beans;

import org.junit.Test;
import com.flextrade.jfixture.JFixture;

public class BeanUserTest extends AbstractBeansTest {

	private JFixture fixture = new JFixture();

	@Test
	public void testObjeto() throws Exception {
		BeanUser obj = new BeanUser();
		testarValores(obj, "userName", fixture.create(String.class));
		testarValores(obj, "id", fixture.create(Long.class));
		testarValores(obj, "role", fixture.create(String.class));
		
	}

}


