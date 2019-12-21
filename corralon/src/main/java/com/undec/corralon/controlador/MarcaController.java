package com.undec.corralon.controlador;

import com.undec.corralon.DTO.Response;
import com.undec.corralon.excepciones.marca.MarcaNotFoundException;
import com.undec.corralon.modelo.Marca;
import com.undec.corralon.service.MarcaService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import javax.validation.Valid;

@CrossOrigin("*")
@RestController
@RequestMapping("/marcas")
public class MarcaController {

    @Autowired
    MarcaService marcaService;

    @GetMapping
    public ResponseEntity<Response> obtenerMarcas() throws MarcaNotFoundException {
        Response response = this.marcaService.obtenerMarcas();
        return new ResponseEntity<>(response, HttpStatus.OK);
    }

    @GetMapping("/{id}")
    public ResponseEntity<Response> obtenerPorId(@PathVariable("id") Integer id) throws MarcaNotFoundException {
        Response response = this.marcaService.obtenerMarcaPorId(id);
        return new ResponseEntity<>(response, HttpStatus.OK);
    }

    @PostMapping
    public ResponseEntity<Response> guardarMarca(@Valid @RequestBody Marca marca) throws MarcaNotFoundException {
        Response response = this.marcaService.guardarMarca(marca);
        return new ResponseEntity<>(response, HttpStatus.OK);
    }

    @PutMapping
    public ResponseEntity<Response> actualizarMarca(@Valid @RequestBody Marca marca) throws MarcaNotFoundException {
        Response response = this.marcaService.guardarMarca(marca);
        return new ResponseEntity<>(response, HttpStatus.OK);
    }
}
