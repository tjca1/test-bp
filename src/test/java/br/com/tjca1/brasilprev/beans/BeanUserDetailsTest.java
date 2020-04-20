package br.com.tjca1.brasilprev.beans;

import java.util.Collection;
import org.junit.Test;
import com.flextrade.jfixture.JFixture;

public class BeanUserDetailsTest extends AbstractBeansTest {

	private JFixture fixture = new JFixture();

	@Test
	public void testObjeto() throws Exception {
		BeanUserDetails obj = new BeanUserDetails();
		testarValores(obj, "userName", fixture.create(String.class));
		testarValores(obj, "token", fixture.create(String.class));
		testarValores(obj, "id", fixture.create(Long.class));
		testarValores(obj, "authorities", fixture.create(Collection.class));
		
	}

}

