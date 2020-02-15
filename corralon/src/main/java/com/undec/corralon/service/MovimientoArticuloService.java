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
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.*;
import java.util.stream.Collectors;

@Service
public class MovimientoArticuloService {

    @Autowired
    MovimientoArticuloRepository movimientoArticuloRepository;

    @Autowired
    PedidoRepository pedidoRepository;

    @Autowired
    ArticuloRepository articuloRepository;

    public Response obtenerStockArticulosActual(){

        Response response = new Response();
        Map<Integer, Double> stock = new HashMap<Integer, Double>();
        List<Articulo> articulos = this.articuloRepository.findAll();

        articulos.forEach( p -> {
            Integer idArticulo = p.getId();
            Double stockArt = this.movimientoArticuloRepository.stockPorArticulo(idArticulo, LocalDateTime.now().toString());
            if( stockArt == null)
                stockArt = 0.0;
            stock.put(idArticulo,stockArt );
        });

        response.setCode(200);
        response.setMsg("Articulos y stock");
        response.setData(stock);

        return response;

    }

    public Response obtenerStockArticulosActual(Integer idPedido){

        Response response = new Response();
        Map<Integer, Double> stock = new HashMap<Integer, Double>();
        List<Articulo> articulos = this.articuloRepository.findAll();
        List<MovimientoArticulo> movimientos = this.movimientoArticuloRepository.findAll();
        String fechaPedido = this.pedidoRepository.findById(idPedido).get().getFecha();

        movimientos = movimientos.stream().sorted(Comparator.comparing(MovimientoArticulo::getFecha)).collect(Collectors.toList());
        movimientos.stream().forEach(System.out::println);

        movimientos = movimientos.stream().filter(m -> m.getPedidoId().getId() < idPedido).collect(Collectors.toList());
        System.out.println("----------------------");
        movimientos.stream().forEach(System.out::println);

        articulos.forEach( p -> {
            Integer idArticulo = p.getId();
            Double stockArt = this.movimientoArticuloRepository.stockPorArticulo(idArticulo,fechaPedido);
            if( stockArt == null)
                stockArt = 0.0;
            stock.put(idArticulo,stockArt );
        });


        response.setCode(200);
        response.setMsg("Articulos y stock");
        response.setData(stock);

        return response;

    }

    public Response obtenerStockDeUnPedido(Integer idPedido){

        Response response = new Response();
        String fechaPedido = this.pedidoRepository.findById(idPedido).get().getFecha();

        List<MovimientoArticulo> movimientoArticulo = this.movimientoArticuloRepository.findMovimientoArticuloByPedidoId_IdEqualsAndFechaBefore(idPedido, fechaPedido);

        response.setCode(200);
        response.setMsg("Movimientos");
        response.setData(movimientoArticulo);

        return response;

    }

    public Response guardarMovimiento(MovimientoArticuloDTO movimientoArticuloDTO){
        Response response = new Response();
        MovimientoArticulo movimientoArticulo = new MovimientoArticulo();
        DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm:ss");
        String horaDeCarga = LocalDateTime.now().format(formatter).toString();
        horaDeCarga = horaDeCarga.substring(10, horaDeCarga.length());
        movimientoArticulo.setFecha(movimientoArticuloDTO.getFecha() + horaDeCarga  );
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
