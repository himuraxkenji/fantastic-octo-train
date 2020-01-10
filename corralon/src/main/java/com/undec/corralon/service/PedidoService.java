package com.undec.corralon.service;

import com.undec.corralon.DTO.Response;
import com.undec.corralon.excepciones.Pedido.PedidoErrorToSaveException;
import com.undec.corralon.modelo.Pedido;
import com.undec.corralon.repository.PedidoRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class PedidoService {

    @Autowired
    PedidoRepository pedidoRepository;

    public Response obtenerTodosLosPedidos(){
        Response response = new Response();

        response.setCode(200);
        response.setData(this.pedidoRepository.findAll());
        response.setMsg("Todos los pedidos");

        return response;
    }

    public Response obtenerPedidosHabilitados(){
        Response response = new Response();

        response.setCode(200);
        response.setData(this.pedidoRepository.findByHabilitacionEquals(1));
        response.setMsg("Todos los pedidos");

        return response;
    }

    public Response obtenerPedidoPorId(Integer id){
        Response response = new Response();
        Pedido pedido = this.pedidoRepository.findById(id).get();

        response.setCode(200);
        response.setData(pedido);
        response.setMsg("Pedido " + pedido.getNombre());

        return response;
    }

    public Response crearPedido(Pedido pedido) throws PedidoErrorToSaveException {
        Response response = new Response();

        pedido = this.pedidoRepository.save(pedido);

        if(pedido == null)
            throw new PedidoErrorToSaveException();

        response.setCode(200);
        response.setData(pedido);
        response.setMsg("Pedido guardado");

        return response;
    }
}
