package br.com.tjca1.brasilprev.cfg;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurationSupport;

import springfox.documentation.builders.OAuthBuilder;
import springfox.documentation.builders.PathSelectors;
import springfox.documentation.builders.RequestHandlerSelectors;
import springfox.documentation.service.ApiInfo;
import springfox.documentation.service.Contact;
import springfox.documentation.service.SecurityScheme;
import springfox.documentation.spi.DocumentationType;
import springfox.documentation.spring.web.plugins.Docket;
import springfox.documentation.swagger2.annotations.EnableSwagger2;

/**
 * @author Thiago Araujo - tjca1@hotmail.com 
 */

@Configuration
@EnableSwagger2
public class ConfigSwagger extends WebMvcConfigurationSupport {
	
	
    @Bean
    public Docket api() {
    	return new Docket(DocumentationType.SWAGGER_2)
                .select()
                .apis(RequestHandlerSelectors.withClassAnnotation(RestController.class))
                .paths(PathSelectors.any())
                .build()
               // .securitySchemes(securityScheme())
                .apiInfo(apiInfo());
             
    }
    
   
    
    private ApiInfo apiInfo() {
        return new ApiInfo(
          "REST API Testes", 
          " Projeto Spring-Boot 2.x c/\r\n" + 
          "    - Spring Data\r\n" + 
          "    - Spring Security\r\n" + 
          "    - Swagger\r\n" + 
          "    - Git\r\n" + 
          "    - Flyway\n"+
          "    - Confis:\n"+
          "sudo apt-get update                                                                                               \r\n" + 
          "sudo apt-get install -y apt-transport-https ca-certificates curl software-properties-common                       \r\n" + 
          "sudo curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -                                 \r\n" + 
          "sudo apt-key fingerprint 0EBFCD88                                                                                 \r\n" + 
          "sudo add-apt-repository \"deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable\"   \r\n"+ 
          "sudo apt-get update                                                                                               \r\n" + 
          "sudo apt-get install -y docker-ce=18.06.1~ce~3-0~ubuntu                                                           \r\n" + 
          "docker run -d --name projeto-test-bp-container -p 8888:30001 tjca1/projeto-spring-boot-bp:1.0.1                   \r\n" 
          , 
          "", 
          "", 
          new Contact("Thiago Araujo", "https://github.com/tjca1", "tjca1@hotmail.com"), 
          "Image docker com projeto ", "https://cloud.docker.com/u/tjca1/repository/docker/tjca1/projeto-spring-boot-bp", Collections.emptyList());
    }
    
  @Override
    protected void addResourceHandlers(ResourceHandlerRegistry registry) {
	    ///Collections.singletonList(apiKey);
        registry.addResourceHandler("swagger-ui.html")
                           .addResourceLocations("classpath:/META-INF/resources/");

        registry.addResourceHandler("/webjars/**")
                .addResourceLocations("classpath:/META-INF/resources/webjars/");
    }
  /*
  @Autowired
	private JwtGenerator jgt;
	
	private List<SecurityScheme> securityScheme() { 
	  List<SecurityScheme> l = new ArrayList<SecurityScheme>();	
	  SecurityScheme oauth = new OAuthBuilder().name("spring_oauth")
     .build();
	  l.add(oauth);
     return l;
   }
  
  */
  
  
}