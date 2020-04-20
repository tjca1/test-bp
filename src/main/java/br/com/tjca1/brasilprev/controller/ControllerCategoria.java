package br.com.tjca1.brasilprev.controller;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Sort;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import br.com.tjca1.brasilprev.beans.BeanCategoria;
import br.com.tjca1.brasilprev.entity.EntityCategoria;
import br.com.tjca1.brasilprev.repository.RepositoryCategoria;
import br.com.tjca1.brasilprev.service.ServiceCategoria;
import br.com.tjca1.brasilprev.util.Msgs;
import br.com.tjca1.brasilprev.util.ResourceNotFoundException;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import io.swagger.annotations.ApiResponse;
import io.swagger.annotations.ApiResponses;

/**
 * @author Thiago Araujo - tjca1@hotmail.com
 */

@SuppressWarnings({"rawtypes","unused"})
@RestController
@RequestMapping(Msgs.URL_CAT)
@Api(value = "Api Categoria")
public class ControllerCategoria {


	private final ServiceCategoria serviceCategoria;
    private final RepositoryCategoria categoriaRepository;

    @Autowired
    public ControllerCategoria(ServiceCategoria serviceCategoria, RepositoryCategoria categoriaRepository) {
        this.serviceCategoria = serviceCategoria;
        this.categoriaRepository = categoriaRepository;
        Msgs.getCodStatus().get(200).toString();
    }

    @GetMapping
    @ApiOperation(value = "Lista Pag")
    @ApiResponses(value = {
		    		@ApiResponse (code = 200, message = Msgs.COD_200),
		    		@ApiResponse (code = 401, message = Msgs.COD_401),
		    		@ApiResponse (code = 403, message = Msgs.COD_403),
		    		@ApiResponse (code = 404, message = Msgs.COD_404)
    })
    public ResponseEntity<?> findAll(@RequestParam(value = "page", defaultValue = "0", required = false) int page,
                                     @RequestParam(value = "count", defaultValue = "10", required = false) int count,
                                     @RequestParam(value = "order", defaultValue = "DESC", required = false) Sort.Direction direction,
                                     @RequestParam(value = "sort", defaultValue =    "id", required = false) String sortProperty) {

        
		Page result = categoriaRepository.findAll(PageRequest.of(page, count, new Sort(direction, sortProperty)));

        return new ResponseEntity<>(result.getContent(), HttpStatus.OK);
    }

    @GetMapping("/{id}")
    @ApiOperation(value = "Procura por ID",response = EntityCategoria.class)
    @PreAuthorize(Msgs.PRE_AUTHORIZE)
    public ResponseEntity<?> find(@PathVariable long id) {

        return categoriaRepository.findById(id)
                .map(c -> new ResponseEntity<>(c, HttpStatus.OK))
                .orElseThrow(() -> new ResourceNotFoundException(Msgs.idNaoEncontrado(id)));
    }

    @PostMapping
    @ApiOperation(value = "Adiciona")
    public ResponseEntity<?> save(@RequestBody @Valid BeanCategoria c) {

    	EntityCategoria entity =  new EntityCategoria(c.getNome());
    	categoriaRepository.save(entity);
    		
        return new ResponseEntity<>(c, HttpStatus.CREATED);
    }

    @PutMapping("/{id}")
    @ApiOperation(value = "Atualiza")
    public ResponseEntity<?> update(@PathVariable(value = "id") long id,
                                        @RequestBody @Valid EntityCategoria c) {
        return categoriaRepository.findById(id)
                .map(storedcategoria -> {
                	storedcategoria.update(c);
                	categoriaRepository.save(c);
                    return ResponseEntity.noContent().build(); 
                })
                .orElseThrow(() -> new ResourceNotFoundException(Msgs.idNaoEncontrado(id)));
    }

    @DeleteMapping("/{id}")
    @ApiOperation(value = "Excluir")
    public ResponseEntity<?> delete(@PathVariable long id) {

        return categoriaRepository.findById(id)
                .map(c -> {
                	categoriaRepository.delete(c);
                    return ResponseEntity.noContent().build();
                }).orElseThrow(() -> new ResourceNotFoundException(Msgs.idNaoEncontrado(id)));
    }
}
