package br.com.tjca1.brasilprev.entity;


import java.math.BigDecimal;

import javax.persistence.Entity;
import javax.persistence.ForeignKey;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToOne;
import javax.persistence.Table;

/**
 * @author Thiago Araujo - tjca1@hotmail.com
 */
@Entity
@Table(name = "pedidos_itens")
public class EntityPedidoItem extends EntityAbstract{

    @OneToOne
    @JoinColumn(name = "idproduto",
            nullable = false,
            foreignKey = @ForeignKey(name = "FK_PRODUTO"))
    private EntityProduto produtoEnt;

    @ManyToOne
    @JoinColumn(name = "idpedido",
            nullable = false,
            foreignKey = @ForeignKey(name = "FK_PEDIDO"))
    private EntityPedido pedido;

    private String produto;
    private Integer quantidade;
    private BigDecimal valor;
    private BigDecimal subtotal;
    
    
    public EntityPedidoItem() {
	}
    
	public EntityPedidoItem(EntityProduto produtoEnt, EntityPedido pedido, Integer quantidade) {
		this.produtoEnt = produtoEnt;
		this.pedido = pedido;
		this.produto = produtoEnt.getProduto();
		this.quantidade = quantidade;
		if(null == produtoEnt.getPreco()) {
			produtoEnt.setPreco(new BigDecimal(0));
		}
		this.valor = produtoEnt.getPreco();
		this.subtotal = valor.multiply(BigDecimal.valueOf(quantidade));
	}
	public EntityProduto getProdutoEnt() {
		return produtoEnt;
	}
	public void setProdutoEnt(EntityProduto produtoEnt) {
		this.produtoEnt = produtoEnt;
	}
	public EntityPedido getPedido() {
		return pedido;
	}
	public void setPedido(EntityPedido pedido) {
		this.pedido = pedido;
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
    
	public EntityPedidoItem(EntityPedidoItem pi) {
		this.produtoEnt = pi.produtoEnt;
		this.pedido = pi.pedido;
		this.produto = pi.produto;
		this.quantidade = pi.quantidade;
		this.valor = pi.valor;
		this.subtotal = pi.subtotal;
	}
 
}
