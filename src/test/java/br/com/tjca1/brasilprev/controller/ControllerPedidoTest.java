package br.com.tjca1.brasilprev.controller;

import org.junit.Assert;
import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.mockito.Mock;
import org.mockito.junit.MockitoJUnitRunner;
import org.springframework.http.ResponseEntity;
import com.flextrade.jfixture.JFixture;
import br.com.tjca1.brasilprev.entity.EntityPedido;
import br.com.tjca1.brasilprev.repository.RepositoryPedido;
import br.com.tjca1.brasilprev.service.ServicePedido;
import br.com.tjca1.brasilprev.util.ResourceNotFoundException;


@SuppressWarnings("unused")
@RunWith(MockitoJUnitRunner.class)
public class ControllerPedidoTest{
	
	private ControllerPedido controllerPedido;
	private JFixture fixture = new JFixture();
	

	@Mock
	private  ServicePedido servicePedidoMock;
	
	@Mock
	RepositoryPedido PedidoRepositoryMock;
	
	//@Mock
	//BeanPedido beanPedido;
	
	@Mock
	EntityPedido entityPedido;
	
	
	
	@Before
	public void inicio() throws Exception{
		 
		this.controllerPedido =  new ControllerPedido(PedidoRepositoryMock,servicePedidoMock);		

	}
	
	@Test
	public void testFind() {
		    boolean assertStatus = true;
		    try {
				ResponseEntity<?> respose = this.controllerPedido.find(fixture.create(Long.class));
		    }catch(ResourceNotFoundException exception) {
		    	//Não encotrado, percuso até o banco esta normal //
		    }catch(Exception exception) {
		    	//Erros gerais //
		    	assertStatus = false;
		    }finally {
		    	 Assert.assertTrue(assertStatus);
		    }

	 }
	
	@Test
	public void testDetete() {
		    boolean assertStatus = true;
		    try {
				ResponseEntity<?> respose = this.controllerPedido.delete(fixture.create(Long.class));
		    }catch(ResourceNotFoundException exception) {
		    	//Não encotrado, percuso até o banco esta normal //
		    }catch(Exception exception) {
		    	//Erros gerais //
		    	assertStatus = false;
		    }finally {
		    	 Assert.assertTrue(assertStatus);
		    }

	 }
	
	
	
	

}
