package br.com.tjca1.brasilprev.service;

import br.com.tjca1.brasilprev.beans.BeanItemPedido;
import br.com.tjca1.brasilprev.entity.*;
import br.com.tjca1.brasilprev.repository.RepositoryCliente;
import br.com.tjca1.brasilprev.repository.RepositoryPedidoItem;
import br.com.tjca1.brasilprev.repository.RepositoryPedido;
import br.com.tjca1.brasilprev.repository.RepositoryProduto;
import br.com.tjca1.brasilprev.util.Msgs;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.validation.constraints.NotNull;
import java.time.LocalDateTime;
import java.util.List;
import java.util.Optional;

import static java.util.stream.Collectors.toList;

@Service
public class ServicePedido {

	 private RepositoryCliente clienteRepository;
	    private RepositoryPedido pedidoRepository;
	    private RepositoryProduto produtoRepository;
	    private RepositoryPedidoItem pedidoItemRepository;

	    @Autowired
	    public ServicePedido(RepositoryCliente clienteRepository,
	                             RepositoryPedido pedidoRepository,
	                             RepositoryProduto produtoRepository,
	                             RepositoryPedidoItem pedidoItemRepository)
	    {
	        this.clienteRepository = clienteRepository;
	        this.pedidoRepository = pedidoRepository;
	        this.produtoRepository = produtoRepository;
	        this.pedidoItemRepository = pedidoItemRepository;
	    }

    public void saveClientItens(long clienteId, @NotNull List<BeanItemPedido> itens) {
    	int nStatusPedido = 1;
    	
        Optional<EntityCliente> clienteOptional = clienteRepository.findById(clienteId);
        
        if(null == clienteOptional || ! clienteOptional.isPresent())
        	nStatusPedido = 2;
        
        EntityPedido pedido = new EntityPedido(clienteOptional.get(), LocalDateTime.now(), Msgs.getStatusPedido(nStatusPedido));
        
        	 pedido.setId(null);
        	 pedidoRepository.save(pedido);
       
        
        List<EntityPedidoItem> pedidosItens = itens.stream().map(item -> {
            Optional<EntityProduto> produtoOptional = produtoRepository.findById(item.getProdutoId());
            
            if(!produtoOptional.isPresent()) {
            	pedido.setStatus(Msgs.getStatusPedido(3)); //Sem produto
            	return new EntityPedidoItem();
            }
            return new EntityPedidoItem(produtoOptional.get(),pedido, item.getQuantidade());
        	
        }).collect(toList());

        pedidoItemRepository.saveAll(pedidosItens);
    }
}
