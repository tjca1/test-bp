package br.com.tjca1.brasilprev.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import br.com.tjca1.brasilprev.entity.EntityCategoria;
import java.lang.String;

/**
 * @author Thiago Araujo - tjca1@hotmail.com
 */
public interface RepositoryCategoria extends JpaRepository<EntityCategoria, Long> {
	
	public EntityCategoria findByNome(String nome);
}
