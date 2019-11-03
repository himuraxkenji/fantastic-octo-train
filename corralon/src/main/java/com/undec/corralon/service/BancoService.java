package com.undec.corralon.service;

import com.undec.corralon.DTO.Response;
import com.undec.corralon.excepciones.banco.BancoListNotFoundException;
import com.undec.corralon.excepciones.departamento.DepartamentoListNotFoundException;
import com.undec.corralon.modelo.Banco;
import com.undec.corralon.repository.BancoRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class BancoService {
    @Autowired
    BancoRepository bancoRepository;
    public Response listarTodos() throws Exception{
        Response response = new Response();
        List<Banco> departamentos = bancoRepository.findAll();

        if(departamentos == null)
            throw new BancoListNotFoundException();

        response.setCode(200);
        response.setMsg("Listado bancos");
        response.setData(departamentos);

        return response;
    }
}
