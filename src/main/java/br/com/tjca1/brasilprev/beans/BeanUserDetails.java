package br.com.tjca1.brasilprev.beans;

import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;

import java.util.Collection;
import java.util.List;

/**
 * @author Thiago Araujo - tjca1@hotmail.com
 */
public class BeanUserDetails implements UserDetails {

	
	private static final long serialVersionUID = -7617178036952175558L;
	public BeanUserDetails() {
	}


	private String userName;
    private String token;
    private Long id;
    private Collection<? extends GrantedAuthority> authorities;


    public BeanUserDetails(String userName, long id, String token, List<GrantedAuthority> grantedAuthorities) {

        this.userName = userName;
        this.id = id;
        this.token= token;
        this.authorities = grantedAuthorities;
    }

    @Override
    public Collection<? extends GrantedAuthority> getAuthorities() {
        return authorities;
    }

    @Override
    public String getPassword() {
        return null;
    }

    @Override
    public String getUsername() {
        return userName;
    }

    @Override
    public boolean isAccountNonExpired() {
        return true;
    }

    @Override
    public boolean isAccountNonLocked() {
        return true;
    }

    @Override
    public boolean isCredentialsNonExpired() {
        return true;
    }

    @Override
    public boolean isEnabled() {
        return true;
    }


    public String getUserName() {
        return userName;
    }

    public String getToken() {
        return token;
    }


    public Long getId() {
        return id;
    }

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public void setToken(String token) {
		this.token = token;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public void setAuthorities(Collection<? extends GrantedAuthority> authorities) {
		this.authorities = authorities;
	}
    

}
