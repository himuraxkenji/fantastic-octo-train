package com.undec.corralon.controlador;

import com.undec.corralon.DTO.Response;
import com.undec.corralon.service.BancoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;


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

}
