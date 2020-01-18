package com.undec.corralon.service;

import com.undec.corralon.DTO.MovimientoArticuloDTO;
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
        Map<Integer, Double> stock = new HashMap<Integer, Double>();
        List<Articulo> articulos = this.articuloRepository.findAll();
        articulos.forEach( p -> {
            Integer idArticulo = p.getId();
            Double stockArt = this.movimientoArticuloRepository.stockPorArticulo(idArticulo);
            if( stockArt == null)
                stockArt = 0.0;
            stock.put(idArticulo,stockArt );

        });


        response.setCode(200);
        response.setMsg("Articulos y stock");
        response.setData(stock);

        return response;

    }

    public Response guardarMovimiento(MovimientoArticuloDTO movimientoArticuloDTO){
        Response response = new Response();
        MovimientoArticulo movimientoArticulo = new MovimientoArticulo();

        movimientoArticulo.setFecha(movimientoArticuloDTO.getFecha());
        movimientoArticulo.setMovimiento(movimientoArticuloDTO.getMovimiento());
        movimientoArticulo.setArticuloId(this.articuloRepository.findById(movimientoArticuloDTO.getArticuloId()).get());
        movimientoArticulo.setPedidoId(this.pedidoRepository.findById(movimientoArticuloDTO.getPedidoId()).get());

        movimientoArticulo = this.movimientoArticuloRepository.save(movimientoArticulo);

        response.setCode(200);
        response.setMsg("Movimiento guardado");
        response.setData(movimientoArticulo);
        return  response;
    }
}
