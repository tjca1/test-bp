package br.com.tjca1.brasilprev.controller;

import javax.servlet.http.HttpSession;

import org.junit.Before;
import org.powermock.api.mockito.PowerMockito;

public class AbstractControllerTest {
	
	protected HttpSession sessionMock;
	
	@Before
	public void inicioBase(){
		sessionMock = PowerMockito.mock(HttpSession.class);

   }
}
