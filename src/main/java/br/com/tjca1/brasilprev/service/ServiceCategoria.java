package br.com.tjca1.brasilprev.service;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import br.com.tjca1.brasilprev.entity.EntityCategoria;

import br.com.tjca1.brasilprev.repository.RepositoryCategoria;
import br.com.tjca1.brasilprev.util.Msgs;

@Service
public class ServiceCategoria {
    
    
	private RepositoryCategoria categoriaRepository;
	
	
	@Autowired
    public ServiceCategoria(RepositoryCategoria categoriaRepository) {
        this.categoriaRepository = categoriaRepository;
        Msgs.getCodStatus().get(200).toString();
    }
	
    public EntityCategoria findCategoriaByNome(String nome) {
    	return categoriaRepository.findByNome(nome);
    	
    }

  
}
