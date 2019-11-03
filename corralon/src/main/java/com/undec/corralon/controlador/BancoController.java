package com.undec.corralon.controlador;

import com.undec.corralon.DTO.Response;
import com.undec.corralon.modelo.Banco;
import com.undec.corralon.service.BancoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import javax.validation.Valid;


@CrossOrigin("*")
@RestController
@RequestMapping("/bancos")
public class BancoController {
    @Autowired
    BancoService bancoService;

    @GetMapping
    public ResponseEntity<Response> listarTodos() throws Exception {
        Response response = bancoService.listarTodos();
        return new ResponseEntity<>(response, HttpStatus.OK);
    }
    @PostMapping
    public ResponseEntity<Response> guardar(@Valid @RequestBody Banco banco) throws Exception {
        Response response = bancoService.guardarBanco(banco);
        return new ResponseEntity<>(response, HttpStatus.OK);
    }

}
