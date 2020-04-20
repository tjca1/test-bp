package br.com.tjca1.brasilprev.beans;

import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;

public class BeanAuthenticationToken extends UsernamePasswordAuthenticationToken{

    /**
	 * @author Thiago Araujo - tjca1@hotmail.com
	 */
	private static final long serialVersionUID = 7083972999837754547L;
	private String token;
	
	

    public BeanAuthenticationToken(String token) {
        super(null, null);
        this.token = token;
    }

    public String getToken() {
        return token;
    }

    public void setToken(String token) {
        this.token = token;
    }

    @Override
    public Object getCredentials() {
        return null;
    }

    @Override
    public Object getPrincipal() {
        return null;
    }
}
