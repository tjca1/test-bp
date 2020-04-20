package br.com.tjca1.brasilprev.controller;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Sort;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import br.com.tjca1.brasilprev.entity.EntityCliente;
import br.com.tjca1.brasilprev.service.ServiceCliente;
import br.com.tjca1.brasilprev.util.Msgs;
import br.com.tjca1.brasilprev.util.ResourceNotFoundException;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;

/**
 * @author Thiago Araujo - tjca1@hotmail.com
 */

@SuppressWarnings({"deprecation","rawtypes"})
@RestController
@RequestMapping( Msgs.URL_CLI)
@Api(value = "Api cliente")
public class ControllerCliente {

    private final ServiceCliente clienteService;

    @Autowired
    public ControllerCliente(ServiceCliente clienteService) {
        this.clienteService = clienteService;
    }


	@GetMapping
	@ApiOperation(value = "Visualiza Lista")
    public ResponseEntity<?> findAll(@RequestParam(value = "page", defaultValue = "0", required = false) int page,
                                     @RequestParam(value = "count", defaultValue = "10", required = false) int count,
                                     @RequestParam(value = "order", defaultValue = "DESC", required = false) Sort.Direction direction,
                                     @RequestParam(value = "sort", defaultValue = "id", required = false) String sortProperty) {


		Page result = clienteService.findAll(new PageRequest(page, count, new Sort(direction, sortProperty)));
        return new ResponseEntity<>(result.getContent(), HttpStatus.OK);
    }

    @GetMapping("/{id}")
    @ApiOperation(value = "Busca por id", response = EntityCliente.class)
    public ResponseEntity<?> find(@PathVariable long id) {

        return clienteService.findById(id)
                .map(c -> new ResponseEntity<>(c, HttpStatus.OK))
                .orElseThrow(() -> new ResourceNotFoundException(Msgs.idNaoEncontrado(id)));
    }

    @PostMapping
    @ApiOperation(value = "Adiciona")
    public ResponseEntity<?> save(@RequestBody @Valid EntityCliente c) {
        return new ResponseEntity<>(clienteService.save(c), HttpStatus.CREATED);
    }

    @PutMapping("/{id}")
    @ApiOperation(value = "Atualiza")
    public ResponseEntity<?> update(@PathVariable(value = "id") long id,
                                        @RequestBody @Valid EntityCliente c) {

        return clienteService.findById(id)
                .map(storedcliente -> {
                    storedcliente.update(c);
                    clienteService.save(c);
                    return ResponseEntity.noContent().build();
                })
                .orElseThrow(() -> new ResourceNotFoundException(Msgs.idNaoEncontrado(id)));
    }

    @DeleteMapping("/{id}")
    @ApiOperation(value = "Exclui")
    public ResponseEntity<?> delete(@PathVariable long id) {

        return clienteService.findById(id)
                .map(c -> {
                    clienteService.delete(c);
                    return ResponseEntity.noContent().build();
                }).orElseThrow(() -> new ResourceNotFoundException(Msgs.idNaoEncontrado(id)));
    }
}
