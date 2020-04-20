package br.com.tjca1.brasilprev.util;

import java.util.HashMap;
import java.util.Map;

public class Msgs {
	
	public final static String URL_CAT = "/rest/categorias";
	public final static String URL_CLI = "/rest/clientes";
	public final static String URL_PED = "/rest/pedidos";
	public final static String URL_PROD = "/rest/produtos";
	public final static String URL_TOKEN = "/token";
	
	public final static String COD_200 =  "Lista recuperada com sucesso";
    public final static String COD_401 =  "Você não está autorizado a ver o recurso";
    public final static String COD_403 =  "Acessando o recurso que você estava tentando acessar é proibido";
    public final static String COD_404 =  "O recurso que você estava tentando acessar não foi encontrado";
    public final static String PRE_AUTHORIZE = "hasAuthority('ADMIN_USER') or hasAuthority('STANDARD_USER')";
    public final static String DADOS_N_ENCONTRADO = "ResourceNotFoundException";
    public final static String AMBIENTE_APP = "TESTE_BRASIL_PREV_AMBIENTE";
    
    
    
	
	
	public static String idNaoEncontrado(Long id) {
		return "Id " + id + " não encontrado";
	}
	
	
	public static Map<Integer,String> getCodStatus() {
		
		Map<Integer,String> m = new HashMap<Integer,String>();
		
		m.put(200 , "Lista recuperada com sucesso");
		m.put(401 , "Você não está autorizado a ver o recurso");
		m.put(403 , "Acessando o recurso que você estava tentando acessar é proibido");
		m.put(404 , "O recurso que você estava tentando acessar não foi encontrado" );
		m.put(201 , "Recurso Criado");
		
		return m;
	}
	
	public static String getStatusPedido(int c) {
			Map<Integer,String> m = new HashMap<Integer,String>();
			
			if(m.isEmpty()) {
				m.put(1 , "CONFIRMADO");
				m.put(2 , "NAO_EXISTE_CLIENTE");
				m.put(3 , "S/PRODUTO");
				m.put(4 , "ENTREGUE" );
				m.put(5 , "CANCELADO");
			}
			
			
			return m.get(c);
		}
	
	

}
