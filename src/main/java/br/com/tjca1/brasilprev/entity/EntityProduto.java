package br.com.tjca1.brasilprev.entity;


import java.math.BigDecimal;
import javax.persistence.Entity;
import javax.persistence.ForeignKey;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import javax.persistence.Table;

@Entity
@Table(name = "produto")
public class EntityProduto extends EntityAbstract {

    @OneToOne
    @JoinColumn(name = "idcategoria", nullable = false, foreignKey = @ForeignKey(name = "FK_CATEGORIA"))
    private EntityCategoria categoria;
    
    private String produto;
    private BigDecimal preco;
    private Integer quantidade;
    private String descricao;
    private String foto;

    
    
    

    public EntityProduto() {
		super();
	}

	public EntityProduto( String produto, BigDecimal preco, int quantidade, String descricao,
			String foto,EntityCategoria categoria) {
		super();
		this.categoria = categoria;
		this.produto = produto;
		this.preco = preco;
		this.quantidade = quantidade;
		this.descricao = descricao;
		this.foto = foto;
	}
	

	public EntityCategoria getCategoria() {
		return categoria;
	}

	public void setCategoria(EntityCategoria categoria) {
		this.categoria = categoria;
	}

	public String getProduto() {
		return produto;
	}

	public void setProduto(String produto) {
		this.produto = produto;
	}

	public BigDecimal getPreco() {
		return preco;
	}

	public void setPreco(BigDecimal preco) {
		this.preco = preco;
	}

	
	public Integer getQuantidade() {
		return quantidade;
	}

	public void setQuantidade(Integer quantidade) {
		this.quantidade = quantidade;
	}

	public String getDescricao() {
		return descricao;
	}

	public void setDescricao(String descricao) {
		this.descricao = descricao;
	}

	public String getFoto() {
		return foto;
	}

	public void setFoto(String foto) {
		this.foto = foto;
	}


	public void update(EntityProduto p) {
		this.categoria = p.categoria;
		this.produto = p.produto;
		this.preco = p.preco;
		this.quantidade = p.quantidade;
		this.descricao = p.descricao;
		this.foto = p.foto;
    }
}
