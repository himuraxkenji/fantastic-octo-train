package com.undec.corralon.controlador;

import com.undec.corralon.DTO.Response;
import com.undec.corralon.service.MovimientoArticuloService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

@CrossOrigin("*")
@RestController
@RequestMapping("/movimientos")
public class MovimientoArticuloController {

    @Autowired
    MovimientoArticuloService movimientoArticuloService;

    @GetMapping("/{id}")
    public ResponseEntity<Response> obtenerMovimientosPorPedido(@PathVariable("id") Integer idPedido){
        Response response = movimientoArticuloService.obtenerMovimientoDeUnPedido(idPedido);
        return new ResponseEntity<Response>(response, HttpStatus.OK);
    }

    @GetMapping("/stock")
    public ResponseEntity<Response> obtenerStockArticulo(){
        Response response = movimientoArticuloService.obtenerStockArticulos();
        return new ResponseEntity<Response>(response, HttpStatus.OK);
    }



}
