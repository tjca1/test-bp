package br.com.tjca1.brasilprev.beans;

import java.math.BigDecimal;

/**
 * @author Thiago Araujo - tjca1@hotmail.com
 */
public class BeanItemPedido {

    private long produtoId;

    private int quantidade;

    private BigDecimal preco;
    

	public BeanItemPedido() {
		super();
	}

	public BeanItemPedido(long produtoId, int quantidade, BigDecimal preco) {
		super();
		this.produtoId = produtoId;
		this.quantidade = quantidade;
		this.preco = preco;
	}

	public long getProdutoId() {
		return produtoId;
	}

	public void setProdutoId(long produtoId) {
		this.produtoId = produtoId;
	}

	public int getQuantidade() {
		return quantidade;
	}

	public void setQuantidade(int quantidade) {
		this.quantidade = quantidade;
	}

	public BigDecimal getPreco() {
		return preco;
	}

	public void setPreco(BigDecimal preco) {
		this.preco = preco;
	}

    
}
