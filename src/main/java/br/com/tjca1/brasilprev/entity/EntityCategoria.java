package br.com.tjca1.brasilprev.entity;


import javax.persistence.Entity;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;

/**
 * @author Thiago Araujo - tjca1@hotmail.com
 */
@Entity
@Table(name = "categoria")
public class EntityCategoria extends EntityAbstract{

    @NotNull
    private String nome;
    
    
     
    
    public EntityCategoria() {
		super();
	}

	public EntityCategoria(@NotNull String nome) {
        this.nome = nome;
    }

	public String getNome() {
		return nome;
	}

	public void setNome(String nome) {
		this.nome = nome;
	}
	
	public void update(EntityCategoria c) {
	        this.nome = c.nome;
	}
   
}
