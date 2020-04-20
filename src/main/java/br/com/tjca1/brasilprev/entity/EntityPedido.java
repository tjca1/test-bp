package br.com.tjca1.brasilprev.entity;

import java.time.LocalDateTime;
import java.util.List;

import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.ForeignKey;
import javax.persistence.JoinColumn;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.Table;

import org.springframework.format.annotation.DateTimeFormat;

import com.fasterxml.jackson.annotation.JsonFormat;

/**
 * @author Thiago Araujo - tjca1@hotmail.com
 */

@Entity
@Table(name = "pedidos")
public class EntityPedido extends EntityAbstract {

    @OneToOne
    @JoinColumn(name = "idcliente", nullable = false, foreignKey = @ForeignKey(name = "FK_CLIENTE"))
    private EntityCliente cliente;
    
    @OneToMany(mappedBy="id",  fetch = FetchType.EAGER)
	private List<EntityPedidoItemSemPedido> pedidosItens;

    @JsonFormat(shape = JsonFormat.Shape.STRING, pattern = "dd-MM-yyyy HH:mm:ss")
    @DateTimeFormat(iso = DateTimeFormat.ISO.TIME)
    private LocalDateTime data;
    private String status;


    
    public EntityPedido(EntityCliente cliente, LocalDateTime data, String status) {
        this.cliente = cliente;
        this.status = status;
        this.data = data;
    }

    

	public List<EntityPedidoItemSemPedido> getPedidosItens() {
		return pedidosItens;
	}

	public void setPedidosItens(List<EntityPedidoItemSemPedido> pedidosItens) {
		this.pedidosItens = pedidosItens;
	}


	public EntityPedido() {
	}

	public EntityCliente getCliente() {
		return cliente;
	}

	public void setCliente(EntityCliente cliente) {
		this.cliente = cliente;
	}

	public LocalDateTime getData() {
		return data;
	}

	public void setData(LocalDateTime data) {
		this.data = data;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

    

}