package com.undec.corralon.service;

import com.undec.corralon.DTO.Response;
import com.undec.corralon.excepciones.cliente.ClienteListNoFoudException;
import com.undec.corralon.modelo.Cliente;
import com.undec.corralon.repository.ClienteRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
@Service
public class ClienteService {
    @Autowired
    ClienteRepository clienteRepository;


    public Response listarTodos()throws Exception{
        Response response = new Response();
        List<Cliente> clientes = clienteRepository.findAll();

        if(clientes == null)
            throw new ClienteListNoFoudException();

        response.setCode(200);
        response.setMsg("Listado Clientes");
        response.setData(clientes);

        return response;
    }
}
