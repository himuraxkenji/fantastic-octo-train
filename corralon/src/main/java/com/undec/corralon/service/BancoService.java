package com.undec.corralon.service;

import com.undec.corralon.DTO.Response;
import com.undec.corralon.excepciones.banco.*;
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
        List<Banco> bancos = bancoRepository.findAll();

        if(bancos == null)
            throw new BancoListNotFoundException();

        response.setCode(200);
        response.setMsg("Listado bancos");
        response.setData(bancos);

        return response;
    }
    public Response listarTodosHabilitados() throws Exception {
        Response response = new Response();
        List<Banco> bancos = bancoRepository.findAllByHabilitadoEquals(1);
        if (bancos == null)
                throw new BancoListNotFoundException();
        response.setCode(200);
        response.setMsg("Lista de Bancos Habilitados");
        response.setData(bancos);

        return response;
    }

    public Response listarBancoPorId(Integer id) throws BancoNotFoundException {
        Response response = new Response();
        Banco banco = bancoRepository.findById(id).get();
        if (banco == null){
            throw new BancoNotFoundException();
        }
        response.setCode(200);
        response.setMsg("Banco solicitado");
        response.setData(banco);
        return response;
    }
    public Response guardarBanco(Banco banco) throws BancoErrorToSaveException {
        Response response = new Response();
        banco.setHabilitado((byte) 1);
        Banco bancoToSave = bancoRepository.save(banco);

        if (bancoToSave == null)
            throw new BancoErrorToSaveException();
        response.setCode(200);
        response.setMsg("banco guardado exitosamente");
        response.setData(bancoToSave);
        return response;
    }
    public Response actualizarBanco(Banco banco) throws BancoErrorToUpdateException {
        Response response = new Response();
        Banco bancoToUpdate = bancoRepository.findById(banco.getId()).get();

        bancoToUpdate.setHabilitado(banco.getHabilitado());
        bancoToUpdate.setNombre(banco.getNombre());
        bancoToUpdate.setAbreviatura(banco.getAbreviatura());

        if (bancoToUpdate == null){
            throw new BancoErrorToUpdateException();
                    }
        response.setCode(200);
        response.setMsg("Banco actuzalizado con exito");
        response.setData(bancoRepository.save(bancoToUpdate));
        return response;
    }
    public Response deshabilitarBanco( Integer id) throws BancoErrorDownException {
        Response response = new Response();
        Banco bancoDelet = bancoRepository.getOne(id);
        bancoDelet.setHabilitado((byte) 0);
        if (bancoDelet== null){
            throw new BancoErrorDownException();
        }
        response.setCode(200);
        response.setMsg("No se encontrom el banco a deshabilitar");
        response.setData(bancoRepository.save(bancoDelet));
        return  response;
    }
}
