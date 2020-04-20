package br.com.tjca1.brasilprev.service;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;

import br.com.tjca1.brasilprev.entity.EntityCliente;

import java.util.Optional;

@SuppressWarnings("rawtypes")
public interface ServiceCliente {


	Page findAll(PageRequest pageRequest);

    Optional<EntityCliente> findById(long id);

    EntityCliente save(EntityCliente customer);

    void delete(EntityCliente customer);
}
