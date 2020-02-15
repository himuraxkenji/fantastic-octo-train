package com.undec.corralon.controlador;

import com.undec.corralon.DTO.MovimientoArticuloDTO;
import com.undec.corralon.DTO.Response;
import com.undec.corralon.service.MovimientoArticuloService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import javax.validation.Valid;

@CrossOrigin("*")
@RestController
@RequestMapping("/movimientos")
public class MovimientoArticuloController {

    @Autowired
    MovimientoArticuloService movimientoArticuloService;

    @GetMapping("/{id}")
    public ResponseEntity<Response> obtenerMovimientosPorPedido(@PathVariable("id") Integer idPedido){
        Response response = movimientoArticuloService.obtenerStockArticulosActual(idPedido);
        return new ResponseEntity<Response>(response, HttpStatus.OK);
    }

    @GetMapping("/stock")
    public ResponseEntity<Response> obtenerStockArticulo(){
        Response response = movimientoArticuloService.obtenerStockArticulosActual();
        return new ResponseEntity<Response>(response, HttpStatus.OK);
    }

//    @GetMapping("/stock/proveedor/{proveedor}")
//    public ResponseEntity<Response> obtenerStockArticulo(@PathVariable("proveedor") String proveedor){
//        Response response = movimientoArticuloService.obtenerStockArticulos();
//        return new ResponseEntity<Response>(response, HttpStatus.OK);
//    }

    @PostMapping
    public ResponseEntity<Response> guardarMovimiento(@Valid @RequestBody MovimientoArticuloDTO movimientoArticuloDTO){
        Response response = movimientoArticuloService.guardarMovimiento(movimientoArticuloDTO);
        return new ResponseEntity<Response>(response, HttpStatus.OK);
    }

}
