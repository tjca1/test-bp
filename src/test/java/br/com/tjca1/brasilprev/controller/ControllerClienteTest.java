package br.com.tjca1.brasilprev.controller;

import org.junit.Assert;
import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.mockito.Mock;
import org.mockito.junit.MockitoJUnitRunner;
import org.springframework.http.ResponseEntity;
import com.flextrade.jfixture.JFixture;
import br.com.tjca1.brasilprev.beans.BeanCliente;
import br.com.tjca1.brasilprev.entity.EntityCliente;
import br.com.tjca1.brasilprev.repository.RepositoryCliente;
import br.com.tjca1.brasilprev.service.ServiceCliente;
import br.com.tjca1.brasilprev.util.ResourceNotFoundException;


@SuppressWarnings("unused")
@RunWith(MockitoJUnitRunner.class)
public class ControllerClienteTest{
	
	private ControllerCliente controllerCliente;
	private JFixture fixture = new JFixture();
	

	@Mock
	private  ServiceCliente serviceClienteMock;
	
	@Mock
	RepositoryCliente ClienteRepositoryMock;
	
	//@Mock
	//BeanCliente beanCliente;
	
	@Mock
	EntityCliente entityCliente;
	
	
	
	@Before
	public void inicio() throws Exception{
		 
		this.controllerCliente =  new ControllerCliente(serviceClienteMock);		

	}
	
	@Test
	public void testFind() {
		    boolean assertStatus = true;
		    try {
				ResponseEntity<?> respose = this.controllerCliente.find(fixture.create(Long.class));
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
	public void testSave() {
		    boolean assertStatus = true;
		    try {
				ResponseEntity<?> respose = this.controllerCliente.save(this.entityCliente);
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
	public void testUpdate() {
		    boolean assertStatus = true;
		    try {
				ResponseEntity<?> respose = this.controllerCliente.update(fixture.create(Long.class),this.entityCliente);
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
				ResponseEntity<?> respose = this.controllerCliente.delete(fixture.create(Long.class));
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
