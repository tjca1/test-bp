package br.com.tjca1.brasilprev.entity;


import java.math.BigDecimal;

import javax.persistence.Entity;
import javax.persistence.ForeignKey;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import javax.persistence.Table;

/**
 * @author Thiago Araujo - tjca1@hotmail.com
 */
@Entity
@Table(name = "pedidos_itens")
public class EntityPedidoItemSemPedido extends EntityAbstract{

    @OneToOne
    @JoinColumn(name = "idproduto",
            nullable = false,
            foreignKey = @ForeignKey(name = "FK_PRODUTO"))
    private EntityProduto produtoEnt;


    private String produto;
    private Integer quantidade;
    private BigDecimal valor;
    private BigDecimal subtotal;
    
    
    public EntityPedidoItemSemPedido() {
	}

	public EntityProduto getProdutoEnt() {
		return produtoEnt;
	}
	public void setProdutoEnt(EntityProduto produtoEnt) {
		this.produtoEnt = produtoEnt;
	}
	public String getProduto() {
		return produto;
	}
	public void setProduto(String produto) {
		this.produto = produto;
	}
	public Integer getQuantidade() {
		return quantidade;
	}
	public void setQuantidade(Integer quantidade) {
		this.quantidade = quantidade;
	}
	public BigDecimal getValor() {
		return valor;
	}
	public void setValor(BigDecimal valor) {
		this.valor = valor;
	}
	public BigDecimal getSubtotal() {
		return subtotal;
	}
	public void setSubtotal(BigDecimal subtotal) {
		this.subtotal = subtotal;
	}
    
	public EntityPedidoItemSemPedido(EntityPedidoItemSemPedido pi) {
		this.produtoEnt = pi.produtoEnt;
		this.produto = pi.produto;
		this.quantidade = pi.quantidade;
		this.valor = pi.valor;
		this.subtotal = pi.subtotal;
	}
 
}
