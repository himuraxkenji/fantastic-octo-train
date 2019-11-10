package com.undec.corralon.service;

import com.undec.corralon.DTO.Response;
import com.undec.corralon.excepciones.proveedor.ProveedorNotFoundException;
import com.undec.corralon.modelo.Proveedor;
import com.undec.corralon.repository.ProveedorRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ProveedorService {
    @Autowired
    ProveedorRepository proveedorRepository;

    public Response listarTodos () throws Exception {
        Response response = new Response();
        List<Proveedor> proveedores = proveedorRepository.findAll();
        if (proveedores == null){
            throw new ProveedorNotFoundException();
        }
        response.setMsg("lista de todos los proveedores");
        response.setCode(200);
        response.setData(proveedores);

        return response;
    }
    public Response listarTodosHabilitados() throws ProveedorNotFoundException {
        Response response = new Response();
        List <Proveedor> proveedores = proveedorRepository.findAllByHabilitadoEquals((byte) 1);
        if (proveedores == null){
            throw new ProveedorNotFoundException();
        }
        response.setCode(200);
        response.setMsg("Listado de proveedores habilitados");
        response.setData(proveedores);
        return response;
    }
}
