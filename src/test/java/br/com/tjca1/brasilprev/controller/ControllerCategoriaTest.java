package br.com.tjca1.brasilprev.controller;

import org.junit.Assert;
import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.mockito.Mock;
import org.mockito.junit.MockitoJUnitRunner;
import org.springframework.http.ResponseEntity;
import com.flextrade.jfixture.JFixture;
import br.com.tjca1.brasilprev.beans.BeanCategoria;
import br.com.tjca1.brasilprev.entity.EntityCategoria;
import br.com.tjca1.brasilprev.repository.RepositoryCategoria;
import br.com.tjca1.brasilprev.service.ServiceCategoria;
import br.com.tjca1.brasilprev.util.ResourceNotFoundException;


@SuppressWarnings("unused")
@RunWith(MockitoJUnitRunner.class)
public class ControllerCategoriaTest extends AbstractControllerTest{
	
	private ControllerCategoria controllerCategoria;
	private JFixture fixture = new JFixture();
	

	@Mock
	private  ServiceCategoria serviceCategoriaMock;
	
	@Mock
	RepositoryCategoria categoriaRepositoryMock;
	
	@Mock
	BeanCategoria beanCategoria;
	
	@Mock
	EntityCategoria entityCategoria;
	
	
	
	@Before
	public void inicio() throws Exception{
		 
		this.controllerCategoria =  new ControllerCategoria(serviceCategoriaMock, categoriaRepositoryMock);		

	}
	
	@Test
	public void testFind() {
		    boolean assertStatus = true;
		    try {
				ResponseEntity<?> respose = this.controllerCategoria.find(fixture.create(Long.class));
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
				ResponseEntity<?> respose = this.controllerCategoria.save(this.beanCategoria);
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
				ResponseEntity<?> respose = this.controllerCategoria.update(fixture.create(Long.class),this.entityCategoria);
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
				ResponseEntity<?> respose = this.controllerCategoria.delete(fixture.create(Long.class));
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
