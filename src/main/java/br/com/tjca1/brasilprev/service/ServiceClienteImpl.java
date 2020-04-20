package br.com.tjca1.brasilprev.service;

import br.com.tjca1.brasilprev.entity.EntityCliente;
import br.com.tjca1.brasilprev.repository.RepositoryCliente;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.stereotype.Service;

import java.util.Optional;

@SuppressWarnings("rawtypes")
@Service
public class ServiceClienteImpl implements ServiceCliente {

    private final RepositoryCliente clienteRepository;

    @Autowired
    public ServiceClienteImpl(RepositoryCliente clienteRepository) {
        this.clienteRepository = clienteRepository;
    }

    @Override
    public Page findAll(PageRequest pageRequest) {
        return clienteRepository.findAll(pageRequest);
    }

    @Override
    public Optional<EntityCliente> findById(long id) {
        return clienteRepository.findById(id);
    }

    @Override
    public EntityCliente save(EntityCliente cliente) {
        return clienteRepository.save(cliente);
    }

    @Override
    public void delete(EntityCliente cliente) {
        clienteRepository.delete(cliente);
    }
}
