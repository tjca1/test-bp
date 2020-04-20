package br.com.tjca1.brasilprev.security;


import org.springframework.stereotype.Component;
import br.com.tjca1.brasilprev.beans.BeanUser;
import io.jsonwebtoken.Claims;
import io.jsonwebtoken.Jwts;
import io.jsonwebtoken.SignatureAlgorithm;
/**
 * @author Thiago Araujo - tjca1@hotmail.com
 */
@Component
public class JwtGenerator {


    public String generate(BeanUser jwtUser) {


        Claims claims = Jwts.claims()
                .setSubject(jwtUser.getUserName());
        claims.put("userId", String.valueOf(jwtUser.getId()));
        claims.put("role", jwtUser.getRole());


        return Jwts.builder()
                .setClaims(claims)
                .signWith(SignatureAlgorithm.HS512, "teste_brasil_prev")
                .compact();
    }
}
