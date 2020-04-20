package br.com.tjca1.brasilprev.controller;


import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import br.com.tjca1.brasilprev.beans.BeanUser;
import br.com.tjca1.brasilprev.security.JwtGenerator;
import br.com.tjca1.brasilprev.util.Msgs;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;

/**
 * @author Thiago Araujo - tjca1@hotmail.com
 */

@RestController
@RequestMapping(Msgs.URL_TOKEN)
@Api(value = "Api Gera o Token")
public class ControllerToken {
	
	
    private JwtGenerator jwtGenerator;

    public ControllerToken(JwtGenerator jwtGenerator) {
        this.jwtGenerator = jwtGenerator;
    }

    @PostMapping
    @ApiOperation(value = "Tokem metodo")
    public BeanUser generate(@RequestBody BeanUser user) {
    	user.setToken("Token "+jwtGenerator.generate(user));
    	user.setAuthorization(true);
        return user;
    }
}