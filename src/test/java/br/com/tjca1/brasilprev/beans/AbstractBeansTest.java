package br.com.tjca1.brasilprev.beans;

import java.lang.reflect.Method;
import org.junit.Assert;
import org.junit.Before;
import com.flextrade.jfixture.JFixture;


public abstract class AbstractBeansTest {

	protected static JFixture fixture;
	
	@Before
	public void setupAbstractBeans(){
		fixture = new JFixture();
	}
	
	//setar valores no objeto e chamar o teste
	protected void testarValores(Object classeTeste, String nomeAtributo, Object valor) {
		try {
			setarValoresnoObjeto(classeTeste, nomeAtributo, valor);
			pegarTestarValoresnoObjeto(classeTeste, nomeAtributo, valor);	
		} catch (Exception e) {
			e.printStackTrace();
			Assert.fail(e.getMessage());
		}
		
	}
	
	//metodo para setar valores nos atributos do objeto
	private Object setarValoresnoObjeto(Object objetoDestino, String nomeAtributo, Object valor) throws Exception{
		Method methodParaAlterar = objetoDestino.getClass().getDeclaredMethod(
			formatarSetter(nomeAtributo), 
			objetoDestino.getClass().getDeclaredField(nomeAtributo).getType());
		methodParaAlterar.invoke(objetoDestino,valor);
		return objetoDestino;		
	}
	
	//metodo para verificar os valores via get
	private void pegarTestarValoresnoObjeto(Object classeTeste, String nomeAtributo, Object valor) throws Exception{
		Method methodParaVerificar = pegarMetodoParaVerificar(classeTeste, nomeAtributo);
		Object result = methodParaVerificar.invoke(classeTeste);
		
		Assert.assertEquals(valor, result);
	}
	
	//formatar nome atributo adicionando o 'set'
	private String formatarSetter(String atributo){
		return "set" + atributo.substring(0, 1).toUpperCase() + atributo.substring(1);
	}
	
	//Pegar o method 'get' ou o metodo 'is'. Adicionar novos tratamentos caso necessario.
	private Method pegarMetodoParaVerificar(Object classeTeste, String nomeAtributo) {
		Method metodoParaVerificar = null;
		String nomeMetodo = "";
		try {
			nomeMetodo = "get" + nomeAtributo.substring(0, 1).toUpperCase() + nomeAtributo.substring(1);
			metodoParaVerificar = classeTeste.getClass().getMethod(nomeMetodo);	
		} catch (Exception e) {
			try {
				nomeMetodo = "is" + nomeAtributo.substring(0, 1).toUpperCase() + nomeAtributo.substring(1);
				metodoParaVerificar = classeTeste.getClass().getMethod(nomeMetodo);	
			} catch (Exception e2) {
				Assert.fail("Metodo para o atributo ["+nomeAtributo+"] nao localizado");
			}
		}
		return metodoParaVerificar;
	}
	
	protected void toString(Object obj) {
		String result = obj.toString();
		Assert.assertNotNull(result);
	}
	
	
	protected void equals(Object objOrigem, Object objDestino) {
		Boolean result = objOrigem.equals(objDestino);
		Assert.assertFalse(result);
	}
}	
