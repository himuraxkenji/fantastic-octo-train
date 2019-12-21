package com.undec.corralon.service;

import com.undec.corralon.DTO.Response;
import com.undec.corralon.excepciones.marca.MarcaNotFoundException;
import com.undec.corralon.modelo.Marca;
import com.undec.corralon.repository.MarcaRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class MarcaService {

    @Autowired
    MarcaRepository marcaRepository;

    public Response obtenerMarcaPorId(Integer id) throws MarcaNotFoundException {
        Response response = new Response();
        Marca marca = this.marcaRepository.findById(id).get();
        response.setCode(200);
        response.setMsg("Marca" );
        response.setData(marca);
        return response;
    }

    public Response obtenerMarcas() throws MarcaNotFoundException {
        Response response = new Response();
        List<Marca> marcas = this.marcaRepository.findAll();
        response.setCode(200);
        response.setMsg("Marcas");
        response.setData(marcas);
        return response;
    }

    public Response guardarMarca(Marca marca) throws MarcaNotFoundException {
        Response response = new Response();
        marca = this.marcaRepository.save(marca);

        if(marca == null)
            throw new MarcaNotFoundException();

        response.setData(marca);
        response.setMsg("Guardado");
        response.setCode(200);

        return response;
    }

    public Response actualizarBanco(Marca marca) throws MarcaNotFoundException {
        Response response = new Response();
        Marca marcaToUpdate = marcaRepository.findById(marca.getId()).get();

        marcaToUpdate.setNombre(marca.getNombre());
        marcaToUpdate.setAbreviatura(marca.getAbreviatura());

        if (marcaToUpdate == null){
            throw new MarcaNotFoundException();
        }
        response.setCode(200);
        response.setMsg("Marca actualizada");
        response.setData(marcaRepository.save(marcaToUpdate));
        return response;
    }


}
