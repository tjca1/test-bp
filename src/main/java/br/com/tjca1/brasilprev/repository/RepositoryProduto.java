package br.com.tjca1.brasilprev.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import br.com.tjca1.brasilprev.entity.EntityProduto;
/**
 * @author Thiago Araujo - tjca1@hotmail.com
 */
public interface RepositoryProduto extends JpaRepository<EntityProduto, Long> {
}
