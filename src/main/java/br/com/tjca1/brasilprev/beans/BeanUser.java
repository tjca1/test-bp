package br.com.tjca1.brasilprev.beans;

/**
 * @author Thiago Araujo - tjca1@hotmail.com
 */
public class BeanUser {
    private String userName;
    private long id;
    private String role;
    private String token;
    private Boolean authorization;
    

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public void setId(long id) {
        this.id = id;
    }

    public void setRole(String role) {
        this.role = role;
    }

    public String getUserName() {
        return userName;
    }

    public long getId() {
        return id;
    }

    public String getRole() {
        return role;
    }

	public String getToken() {
		return token;
	}

	public void setToken(String token) {
		this.token = token;
	}

	public Boolean getAuthorization() {
		return authorization;
	}

	public void setAuthorization(Boolean authorization) {
		this.authorization = authorization;
	}
	
	
    
    
    
    
}
