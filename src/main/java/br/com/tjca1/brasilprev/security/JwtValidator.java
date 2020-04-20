package br.com.tjca1.brasilprev.security;


import org.springframework.stereotype.Component;
import br.com.tjca1.brasilprev.beans.BeanUser;
import br.com.tjca1.brasilprev.util.Msgs;
import io.jsonwebtoken.Claims;
import io.jsonwebtoken.Jwts;
/**
 * @author Thiago Araujo - tjca1@hotmail.com
 */
@Component
public class JwtValidator {


   

    public BeanUser validate(String token) {
       
        ////ATRIBUI O SECRT PARA O TOKEN SE EXISTIR A VARIAVEL DE AMBIENTE///
        String secret_ambinte =  System.getenv(Msgs.AMBIENTE_APP);
        if(secret_ambinte == null) {
        	secret_ambinte = "teste_brasil_prev";
        }
        
    	BeanUser jwtUser = null;
        try {
            Claims body = Jwts.parser()
                    .setSigningKey(secret_ambinte)
                    .parseClaimsJws(token)
                    .getBody();

            jwtUser = new BeanUser();

            jwtUser.setUserName(body.getSubject());
            jwtUser.setId(Long.parseLong((String) body.get("userId")));
            jwtUser.setRole((String) body.get("role"));
        }
        catch (Exception e) {
            System.out.println(e);
        }

        return jwtUser;
    }
}
