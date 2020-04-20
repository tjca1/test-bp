package br.com.tjca1.brasilprev.controller;

import br.com.tjca1.brasilprev.entity.EntityProduto;
import br.com.tjca1.brasilprev.repository.RepositoryProduto;
import br.com.tjca1.brasilprev.util.Msgs;
import br.com.tjca1.brasilprev.util.ResourceNotFoundException;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Sort;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;
import javax.validation.Valid;

/**
 * @author Thiago Araujo - tjca1@hotmail.com
 */

@SuppressWarnings({"deprecation","rawtypes"})
@RestController
@RequestMapping(Msgs.URL_PROD)
@Api(value = "Produto Api")
public class ControllerProduto {

    private final RepositoryProduto produtoRepository;

    @Autowired
    public ControllerProduto(RepositoryProduto produtoRepository) {
        this.produtoRepository = produtoRepository;
    }

    @GetMapping
    @ApiOperation(value = "View a list of products")
    public ResponseEntity<?> findAll(@RequestParam(value = "page", defaultValue = "0", required = false) int page,
                                     @RequestParam(value = "count", defaultValue = "10", required = false) int count,
                                     @RequestParam(value = "order", defaultValue = "DESC", required = false) Sort.Direction direction,
                                     @RequestParam(value = "sort", defaultValue = "id", required = false) String sortProperty) {

        Page result = produtoRepository.findAll(new PageRequest(page, count, new Sort(direction, sortProperty)));

        return new ResponseEntity<>(result.getContent(), HttpStatus.OK);
    }

    @GetMapping("/{id}")
    @ApiOperation(value = "Search a product with an ID",response = EntityProduto.class)
    public ResponseEntity<?> find(@PathVariable long id) {

        return produtoRepository.findById(id)
                .map(c -> new ResponseEntity<>(c, HttpStatus.OK))
                .orElseThrow(() -> new ResourceNotFoundException("Não foi encontrado nenhum produto com id " + id));
    }

    @PostMapping
    @ApiOperation(value = "Add a product")
    public ResponseEntity<?> save(@RequestBody @Valid EntityProduto product) {

        EntityProduto storedProduct = produtoRepository.save(product);

        return new ResponseEntity<>(storedProduct, HttpStatus.CREATED);
    }

    @PutMapping("/{id}")
    @ApiOperation(value = "Update an product")
    public ResponseEntity<?> update(@PathVariable(value = "id") long id,
                                        @RequestBody @Valid EntityProduto product) {

        return produtoRepository.findById(id)
                .map(storedProduct -> {
                    storedProduct.update(product);
                    produtoRepository.save(product);
                    return ResponseEntity.noContent().build();
                })
                .orElseThrow(() -> new ResourceNotFoundException("Não foi encontrado nenhum produto com id " + id));
    }

    @DeleteMapping("/{id}")
    @ApiOperation(value = "Delete a product")
    public ResponseEntity<?> delete(@PathVariable long id) {

        return produtoRepository.findById(id)
                .map(product -> {
                    produtoRepository.delete(product);
                    return ResponseEntity.noContent().build();
                }).orElseThrow(() -> new ResourceNotFoundException("Não foi encontrado nenhum produto com id " + id));
    }
}
