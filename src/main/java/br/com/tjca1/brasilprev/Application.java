package br.com.tjca1.brasilprev;


import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.data.jpa.repository.config.EnableJpaAuditing;

/**
 * @author Thiago Araujo - tjca1@hotmail.com
 */

@SpringBootApplication
@EnableJpaAuditing
public class Application{

	public static void main(String[] args) {

		SpringApplication.run(Application.class, args);

		
    }

    
}
