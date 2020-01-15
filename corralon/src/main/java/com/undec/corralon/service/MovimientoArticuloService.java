package com.undec.corralon.service;

import com.undec.corralon.DTO.Response;
import com.undec.corralon.modelo.Articulo;
import com.undec.corralon.modelo.MovimientoArticulo;
import com.undec.corralon.repository.ArticuloRepository;
import com.undec.corralon.repository.MovimientoArticuloRepository;
import com.undec.corralon.repository.PedidoRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.*;

@Service
public class MovimientoArticuloService {

    @Autowired
    MovimientoArticuloRepository movimientoArticuloRepository;

    @Autowired
    PedidoRepository pedidoRepository;

    @Autowired
    ArticuloRepository articuloRepository;

    public Response obtenerMovimientoDeUnPedido(Integer idPedido){

        Response response = new Response();
        List<MovimientoArticulo> movimientoArticulo = this.movimientoArticuloRepository.findMovimientoArticuloByPedidoId_IdEquals(idPedido);

        response.setCode(200);
        response.setMsg("Movimientos");
        response.setData(movimientoArticulo);

        return response;

    }

    public Response obtenerStockArticulos(){

        Response response = new Response();
        Map<Integer, Integer> stock = new HashMap<Integer, Integer>();
        List<Articulo> articulos = this.articuloRepository.findAll();


        articulos.stream().forEach( p -> {
            Integer idArticulo = p.getId();
            Integer stockArt = this.movimientoArticuloRepository.findAllByArticuloId(idArticulo);

            stock.put(idArticulo,stockArt );

        });


        response.setCode(200);
        response.setMsg("Articulos y stock");
        response.setData(stock);

        return response;

    }
}
