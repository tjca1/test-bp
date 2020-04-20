package br.com.tjca1.brasilprev.controller;

import org.junit.Assert;
import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.mockito.Mock;
import org.mockito.junit.MockitoJUnitRunner;
import org.springframework.http.ResponseEntity;
import com.flextrade.jfixture.JFixture;
import br.com.tjca1.brasilprev.entity.EntityProduto;
import br.com.tjca1.brasilprev.repository.RepositoryProduto;
import br.com.tjca1.brasilprev.util.ResourceNotFoundException;


@SuppressWarnings("unused")
@RunWith(MockitoJUnitRunner.class)
public class ControllerProdutoTest{
	
	private ControllerProduto controllerProduto;
	private JFixture fixture = new JFixture();
	


	
	@Mock
	RepositoryProduto ProdutoRepositoryMock;
	
	//@Mock
	//BeanProduto beanProduto;
	
	@Mock
	EntityProduto entityProduto;
	
	
	
	@Before
	public void inicio() throws Exception{
		 
		this.controllerProduto =  new ControllerProduto(ProdutoRepositoryMock);		

	}
	
	@Test
	public void testFind() {
		    boolean assertStatus = true;
		    try {
				ResponseEntity<?> respose = this.controllerProduto.find(fixture.create(Long.class));
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
				ResponseEntity<?> respose = this.controllerProduto.delete(fixture.create(Long.class));
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
				ResponseEntity<?> respose = this.controllerProduto.save(this.entityProduto);
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
				ResponseEntity<?> respose = this.controllerProduto.update(fixture.create(Long.class),this.entityProduto);
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
