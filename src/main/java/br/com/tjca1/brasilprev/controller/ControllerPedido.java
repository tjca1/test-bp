package br.com.tjca1.brasilprev.controller;

import javax.transaction.Transactional;
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
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import br.com.tjca1.brasilprev.beans.BeanCliente;
import br.com.tjca1.brasilprev.entity.EntityPedido;
import br.com.tjca1.brasilprev.repository.RepositoryPedido;
import br.com.tjca1.brasilprev.service.ServicePedido;
import br.com.tjca1.brasilprev.util.Msgs;
import br.com.tjca1.brasilprev.util.ResourceNotFoundException;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import io.swagger.annotations.ApiResponse;
import io.swagger.annotations.ApiResponses;

/**
 * @author Thiago Araujo - tjca1@hotmail.com
 */

@SuppressWarnings({"deprecation","rawtypes"})
@RestController
@RequestMapping(Msgs.URL_PED)
@Api(value = "Api Pedidos")
public class ControllerPedido {

    private final RepositoryPedido repositoryPedido;
    private ServicePedido servicePedido;

    @Autowired
    public ControllerPedido(RepositoryPedido repositoryPedido,
                           ServicePedido servicePedido) {
        this.repositoryPedido = repositoryPedido;
        this.servicePedido = servicePedido;
    }

    @GetMapping
    @ApiOperation(value = "Visualiza Lista")
    @ApiResponses(value = {
					    		@ApiResponse (code = 200, message = Msgs.COD_200),
					    		@ApiResponse (code = 401, message = Msgs.COD_401),
					    		@ApiResponse (code = 403, message = Msgs.COD_403),
					    		@ApiResponse (code = 404, message = Msgs.COD_404)
    })
    public ResponseEntity<?> findAll(@RequestParam(value = "page", defaultValue = "0", required = false) int page,
                                     @RequestParam(value = "count", defaultValue = "10", required = false) int count,
                                     @RequestParam(value = "order", defaultValue = "DESC", required = false) Sort.Direction direction,
                                     @RequestParam(value = "sort", defaultValue = "id", required = false) String sortProperty) {

        Page result = repositoryPedido.findAll(new PageRequest(page, count, new Sort(direction, sortProperty)));

        return new ResponseEntity<>(result.getContent(), HttpStatus.OK);
    }

    @GetMapping("/{id}")
    @Transactional
    @ApiOperation(value = "Busca por id", response = EntityPedido.class)
    public ResponseEntity<?> find(@PathVariable long id) {

        return repositoryPedido.findById(id)
                .map(c -> new ResponseEntity<>(c, HttpStatus.OK))
                .orElseThrow(() -> new ResourceNotFoundException(Msgs.idNaoEncontrado(id)));
    }

    @PostMapping
    @ApiOperation(value = "Novo")
    public ResponseEntity<?> save(@RequestBody @Valid BeanCliente c) {

    	servicePedido.saveClientItens(c.getClienteId(), c.getItens());

        return ResponseEntity.ok().build();
    }

    @DeleteMapping("/{id}")
    @ApiOperation(value = "Exclui")
    public ResponseEntity<?> delete(@PathVariable long id) {

        return repositoryPedido.findById(id)
                .map(p -> {
                	repositoryPedido.delete(p);
                    return ResponseEntity.noContent().build();
                }).orElseThrow(() -> new ResourceNotFoundException(Msgs.idNaoEncontrado(id)));
    }
}
