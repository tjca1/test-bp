package br.com.tjca1.brasilprev.entity;

import javax.persistence.*;
import javax.validation.constraints.NotNull;

/**
 * @author Thiago Araujo - tjca1@hotmail.com
 */
@Entity
@Table(name = "cliente")
public class EntityCliente extends EntityAbstract{

    
    private String nome ;
	private String email ;
	private String senha ;
	private String rua ;
	private String cidade ;
	private String bairro ;
	private String cep ;
	private String estado;


    public EntityCliente() {
    }

    public EntityCliente(@NotNull String nome, @NotNull String email, @NotNull String senha, @NotNull String rua, @NotNull String cidade, @NotNull String bairro, @NotNull String cep,
			@NotNull String estado) {
		this.nome = nome;
		this.email = email;
		this.senha = senha;
		this.rua = rua;
		this.cidade = cidade;
		this.bairro = bairro;
		this.cep = cep;
		this.estado = estado;
	}

	public String getNome() {
		return nome;
	}

	public void setNome(String nome) {
		this.nome = nome;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getSenha() {
		return senha;
	}

	public void setSenha(String senha) {
		this.senha = senha;
	}

	public String getRua() {
		return rua;
	}

	public void setRua(String rua) {
		this.rua = rua;
	}

	public String getCidade() {
		return cidade;
	}

	public void setCidade(String cidade) {
		this.cidade = cidade;
	}

	public String getBairro() {
		return bairro;
	}

	public void setBairro(String bairro) {
		this.bairro = bairro;
	}

	public String getCep() {
		return cep;
	}

	public void setCep(String cep) {
		this.cep = cep;
	}

	public String getEstado() {
		return estado;
	}

	public void setEstado(String estado) {
		this.estado = estado;
	}


	public void update(EntityCliente c) {
        this.nome   = c.nome ;      
    	this.email  = c.email ;    
    	this.senha  = c.senha ;    
    	this.rua    = c.rua ;        
    	this.cidade = c.cidade ;  
    	this.bairro = c.bairro ;  
    	this.cep    = c.cep ;        
    	this.estado = c.estado;
 
    }
}
