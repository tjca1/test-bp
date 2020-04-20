package br.com.tjca1.brasilprev.beans;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

/**
 * @author Thiago Araujo - tjca1@hotmail.com
 */
public class BeanCliente implements Serializable{


	/**
	 * 
	 */
	private static final long serialVersionUID = 9207716768446591060L;

	private long clienteId;

    private List<BeanItemPedido> itens;

    public BeanCliente() {
    	itens = new ArrayList<BeanItemPedido>();
    	
    }

    public BeanCliente(long clienteId, List<BeanItemPedido> itens) {
        this.clienteId = clienteId;
        this.itens = itens;
    }

    public long getClienteId() {
        return clienteId;
    }
    
    
    public void setClienteId(long clienteId) {
		this.clienteId = clienteId;
	}

	public void setItens(List<BeanItemPedido> itens) {
		this.itens = itens;
	}

	public List<BeanItemPedido> getItens() {
        return itens;
    }
}
